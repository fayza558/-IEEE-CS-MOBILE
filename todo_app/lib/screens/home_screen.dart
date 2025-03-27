import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/screens/archive_screen.dart';
import 'package:todo_app/screens/done_screen.dart';
import 'package:todo_app/screens/tasks_screen.dart';
import 'package:todo_app/widgets/reusable_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(initialPage: 0);
  final NotchBottomBarController _controller = NotchBottomBarController(
    index: 0,
  );
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isBottonSheetShow = false;
  List<Widget> screens = const [TasksScreen(), ArchiveScreen(), DoneScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(Icons.menu, color: Color.fromARGB(255, 103, 7, 76)),
            Text(
              'All Tasks',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 103, 7, 76),
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(screens.length, (index) => screens[index]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isBottonSheetShow) {
            if (formKey.currentState!.validate()) {
              Navigator.pop(context);
              isBottonSheetShow = false;
            }
          } else {
            _scaffoldKey.currentState!
                .showBottomSheet((context) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          defaultFormField(
                            controller: titleController,
                            labelText: 'Task Name',
                            icon: Icons.title,
                            onTap: () {},
                          ),
                          const SizedBox(height: 10),
                          defaultFormField(
                            controller: timeController,
                            labelText: 'Task Time',
                            icon: Icons.timer_rounded,
                            onTap: () {
                              showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value){
                                timeController.text=value!.format(context);
                              });
                            },
                          ),
                          const SizedBox(height: 10),
                          defaultFormField(
                            controller: dateController,
                            labelText: 'Task Date',
                            icon: Icons.date_range,
                            onTap: () {
                              showDatePicker(context: context, firstDate:  DateTime.now(),initialDate: DateTime.now(), lastDate: DateTime.parse('3119-05-09')).then((value){
                                   dateController.text=value!.toString();
                                   //The library for this code is not working for me.
                                  // dateController.text=Dateformat.yMMMd().format(value!);
                              }) ;
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                })
                .closed
                .then((value) {
                  isBottonSheetShow = true;
                });
            isBottonSheetShow = true;
          }
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          color: Color.fromRGBO(240, 109, 203, 1),
          size: 30,
        ),
      ),
      bottomNavigationBar: AnimatedNotchBottomBar(
        color: const Color.fromARGB(255, 80, 1, 57),
        notchBottomBarController: _controller,
        notchColor: const Color.fromARGB(255, 80, 1, 57),
        elevation: 1,
        showLabel: true,
        removeMargins: false,
        bottomBarWidth: 500,
        showShadow: false,
        bottomBarItems: [
          bottomBarItem(icon: Icons.home, text: 'Tasks'),
          bottomBarItem(icon: Icons.archive, text: 'Archive'),
          bottomBarItem(icon: Icons.check_box, text: 'Done'),
        ],
        onTap: (int value) {
          _pageController.jumpToPage(value);
        },
        kIconSize: 24,
        kBottomRadius: 28,
      ),
    );
  }
}

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';

///bottom bar item
BottomBarItem bottomBarItem({required IconData icon, required String text}) =>
    BottomBarItem(
      inActiveItem: Icon(icon, color: Colors.white),
      activeItem: Icon(
        icon,
        color: const Color.fromRGBO(252, 191, 235, 1),
        // color: const Color.fromARGB(255, 223, 114, 243
      ),
      itemLabelWidget: Text(text, style: const TextStyle(color: Colors.white)),
    );

///
Widget defaultFormField({
  required TextEditingController controller,
  required String labelText,
  required IconData icon,
  required GestureTapCallback onTap,
}) => TextFormField(
  controller: controller,
  validator: (value) {
    if (value!.isEmpty) {
      return 'Please Enter your task name';
    }
    return null;
  },
  onTap: onTap,
  decoration: InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
    labelText: labelText,
    prefixIcon: Icon(icon),
  ),
);

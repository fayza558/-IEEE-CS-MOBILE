import 'package:dio/dio.dart';
import 'package:weathe_app/model/weater_model.dart';

class ApiHelper {
  Future<WeaterModel> getData(String cityName) async {
    final response = await Dio().get(
      'http://api.weatherapi.com/v1/forecast.json?key=f92417adebf74911ae6223847231204&q=$cityName&days=7',
    );
    WeaterModel weaterModel = WeaterModel.fromJsom(response.data);
    return weaterModel;
  }
}

import 'package:mecore/config/themes/theme_data.dart';
import 'package:mecore/modules/models/weather_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherIconCubit extends Cubit<WeatherIcon> {
  WeatherIconCubit(super.initialState);

  List<WeatherIcon> weatherIconList = [
    WeatherIcon(
      unselected: Text(
        '🌞',
        style: WeatherIcon.unselectedTextStyle(),
      ),
      selected: Text(
        '🌞',
        style: WeatherIcon.selectedTextStyle(),
      ),
    ),
    WeatherIcon(
      unselected: Text(
        '⛅',
        style: WeatherIcon.unselectedTextStyle(),
      ),
      selected: Text(
        '⛅',
        style: WeatherIcon.selectedTextStyle(),
      ),
    ),
    WeatherIcon(
      unselected: Text(
        '☁️',
        style: WeatherIcon.unselectedTextStyle(),
      ),
      selected: Text(
        '☁️',
        style: WeatherIcon.selectedTextStyle(),
      ),
    ),
    WeatherIcon(
      unselected: Text(
        '🌬️',
        style: WeatherIcon.unselectedTextStyle(),
      ),
      selected: Text(
        '🌬️',
        style: WeatherIcon.selectedTextStyle(),
      ),
    ),
    WeatherIcon(
      unselected: Text(
        '☂️',
        style: WeatherIcon.unselectedTextStyle(),
      ),
      selected: Text(
        '☂️',
        style: WeatherIcon.selectedTextStyle(),
      ),
    ),
    WeatherIcon(
      unselected: Text(
        '⛄',
        style: WeatherIcon.unselectedTextStyle(),
      ),
      selected: Text(
        '⛄',
        style: WeatherIcon.selectedTextStyle(),
      ),
    ),
    WeatherIcon(
      unselected: Text(
        '⚡',
        style: WeatherIcon.unselectedTextStyle(),
      ),
      selected: Text(
        '⚡',
        style: WeatherIcon.selectedTextStyle(),
      ),
    ),
  ];

  String unselectedText(int index) {
    return weatherIconList[index].unselected.data ?? '';
  }

  String selectedText(int index) {
    return weatherIconList[index].selected.data ?? '';
  }

  void toggleWeatherIcon(int index) {
    List<WeatherIcon> copyWithList = List<WeatherIcon>.from(weatherIconList);
    copyWithList[index].isSwitched();
    emit(WeatherIcon(
        unselected: copyWithList[index].unselected,
        selected: copyWithList[index].selected));
    // WeatherIconList[index].isSwitched();
    // emit(state);
  }
}

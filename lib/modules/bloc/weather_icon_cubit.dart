import 'package:diary/modules/models/weather_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherIconCubit extends Cubit<WeatherIcon> {
  WeatherIconCubit(super.initialState);

  List<WeatherIcon> WeatherIconList = [
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
    return WeatherIconList[index].unselected.data ?? '';
  }

  String selectedText(int index) {
    return WeatherIconList[index].selected.data ?? '';
  }

  void toggleWeatherIcon(int index) {
    WeatherIconList[index].isSwitched();
    emit(state);
  }
}

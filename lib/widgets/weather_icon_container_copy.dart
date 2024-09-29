import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/modules/bloc/weather_icon_cubit.dart';
import 'package:diary/modules/models/weather_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherIconContainer extends StatefulWidget {
  const WeatherIconContainer({super.key});

  @override
  State<WeatherIconContainer> createState() => _WeatherIconContainerState();
}

class _WeatherIconContainerState extends State<WeatherIconContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: mainBorderSide),
        color: backgroundColor,
      ),
      child: BlocBuilder<WeatherIconCubit, WeatherIcon>(
        builder: (context, state) {
          return Row(
            children: List<Widget>.generate(
              7,
              (index) {
                return Expanded(
                  flex: 1,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                            right:
                                index == 6 ? BorderSide.none : mainBorderSide),
                      ),
                      child: TextButton(
                        onPressed: () {
                          context
                              .read<WeatherIconCubit>()
                              .toggleWeatherIcon(index);
                          setState(() {});
                        },
                        child: context
                            .read<WeatherIconCubit>()
                            .WeatherIconList[index]
                            .initialText,
                        style: ButtonStyle(
                          padding: WidgetStatePropertyAll(EdgeInsets.zero),
                          overlayColor:
                              WidgetStatePropertyAll(Colors.transparent),
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter_blocs/weathers/models/weather.dart';
import 'package:flutter_blocs/weathers/repositories/weather_repository.dart';

import 'package:meta/meta.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this._weatherRepository) : super(const WeatherInitial());

  final WeatherRepository _weatherRepository;

  Future<void> getWeather(String cityName) async {
    try {
      emit(const WeatherLoading());
      final Weather weather = await _weatherRepository.fetchWeather(cityName);
      emit(WeatherLoaded(weather));
    } on NetworkException {
      emit(const WeatherError("Couldn't fetch weather. Is the device online?"));
    }
  }
}

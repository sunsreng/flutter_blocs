import 'package:meta/meta.dart';

class Weather {
  Weather({
    @required this.cityName,
    @required this.temperatureCelsius,
  });

  final String cityName;
  final double temperatureCelsius;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object o) {
    if (identical(this, o)) {
      return true;
    }

    return o is Weather && o.cityName == cityName && o.temperatureCelsius == temperatureCelsius;
  }

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => cityName.hashCode ^ temperatureCelsius.hashCode;
}

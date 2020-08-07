import 'package:flutter/material.dart';
import 'package:flutter_blocs/home.dart';
import 'package:flutter_blocs/counters/counter.dart';
import 'package:flutter_blocs/weathers/weather.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bloc',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        '/counter': (BuildContext context) => CounterPage(),
        '/weather': (BuildContext context) => WeatherPage(),
      },
    );
  }
}

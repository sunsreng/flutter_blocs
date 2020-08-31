import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blocs/counters/view/counter_page.dart';
// import 'package:flutter_blocs/counters/counter.dart';
import 'package:flutter_blocs/fb_observer.dart';
import 'package:flutter_blocs/home.dart';
import 'package:flutter_blocs/settings/settings.dart';
import 'package:flutter_blocs/weathers/weather.dart';

void main() {
  Bloc.observer = FbObserver();
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bloc',
      initialRoute: CounterPage.route,
      routes: <String, WidgetBuilder>{
        HomePage.route: (BuildContext context) => HomePage(),
        CounterPage.route: (BuildContext context) => CounterPage(),
        WeatherPage.route: (BuildContext context) => WeatherPage(),
        SettingsPage.route: (BuildContext context) => SettingsPage(),
      },
    );
  }
}

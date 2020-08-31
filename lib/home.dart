import 'package:flutter/material.dart';
import 'package:flutter_blocs/counters/counter.dart';
import 'package:flutter_blocs/settings/settings.dart';
import 'package:flutter_blocs/weathers/weather.dart';

class HomePage extends StatelessWidget {
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          // action button
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () => print('click account'),
          ),
        ],
      ),
      body: const Center(
        child: Text('Center Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            buildDrawerHeader(context),
            buildListTile(context, 'Counter', CounterPage.route),
            buildListTile(context, 'Weather', WeatherPage.route),
            buildListTile(context, 'Settings', SettingsPage.route),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerHeader(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/'),
      child: const DrawerHeader(
        child: Text('Flutter Bloc'),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
    );
  }

  ListTile buildListTile(BuildContext context, String title, String route) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, route);
      },
    );
  }
}

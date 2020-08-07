import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Center Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            buildDrawerHeader(context),
            buildListTile(context, 'Counter', '/counter'),
            buildListTile(context, 'Weather', '/weather'),
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

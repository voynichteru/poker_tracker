import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainScreen extends HookWidget {
  const MainScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('poker tracker header'),
        bottom: PreferredSize(
          child: Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Text(
                    'settings',
                    style: TextStyle(color: Colors.grey[900]),
                  ),
                ),
                onTap: () {},
              ),
              const SizedBox(width: 10),
              GestureDetector(
                child: Container(
                  child: Text(
                    'settings',
                    style: TextStyle(color: Colors.grey[900]),
                  ),
                ),
                onTap: () {
                  debugPrint('hello man +++++++++++++++');
                },
              ),
              const SizedBox(width: 10),
              GestureDetector(
                child: Container(
                  child: Text(
                    'settings',
                    style: TextStyle(color: Colors.grey[900]),
                  ),
                ),
                onTap: () {},
              ),
              const SizedBox(width: 10),
              GestureDetector(
                child: Container(
                  child: Text(
                    'settings',
                    style: TextStyle(color: Colors.grey[900]),
                  ),
                ),
                onTap: () {},
              ),
              const SizedBox(width: 10),
            ],
          ),
          preferredSize: Size.fromHeight(20),
        ),
      ),
      body: const Text('body'),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Los Angeles'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Honolulu'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Dallas'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Seattle'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Tokyo'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app_review/drawer.dart';
import 'package:flutter_app_review/hero.dart';
import 'package:flutter_app_review/return_data.dart';
import 'package:flutter_app_review/route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/first': (context) => FirstRoute(),
        '/drawer': (context) => DrawerHomePage(),
        '/hero': (context) => HeroMainScreen(),
        ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
        '/returnData': (context) => ReturnDataHomeScreen(),
      },
      title: 'Welcome to Flutter',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              child: Text('FirstRoute'),
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
            ),
            ElevatedButton(
              child: Text('Drawer'),
              onPressed: () {
                Navigator.pushNamed(context, '/drawer');
              },
            ),
            ElevatedButton(
              child: Text('HeroMain'),
              onPressed: () {
                Navigator.pushNamed(context, '/hero');
              },
            ),
            ElevatedButton(
              child: Text('ExtractArgumentsScreen'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  ExtractArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Extract Arguments Screen',
                    'This message is extracted in the build method',
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('ReturnData'),
              onPressed: () {
                Navigator.pushNamed(context, '/returnData');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ExtractArgumentsScreen extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}

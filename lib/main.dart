import 'package:flutter/material.dart';
import 'package:flutter_app_review/animated_prop.dart';
import 'package:flutter_app_review/cached_image.dart';
import 'package:flutter_app_review/create_listview.dart';
import 'package:flutter_app_review/drawer.dart';
import 'package:flutter_app_review/extract_arg_screen.dart';
import 'package:flutter_app_review/fade_in_image.dart';
import 'package:flutter_app_review/animated_opacity.dart';
import 'package:flutter_app_review/floating_app_bar.dart';
import 'package:flutter_app_review/grid_list.dart';
import 'package:flutter_app_review/hero.dart';
import 'package:flutter_app_review/horizontal_list.dart';
import 'package:flutter_app_review/long_lists.dart';
import 'package:flutter_app_review/multi_type_list.dart';
import 'package:flutter_app_review/orientation.dart';
import 'package:flutter_app_review/retrieve_text_value.dart';
import 'package:flutter_app_review/return_data.dart';
import 'package:flutter_app_review/ripples_button.dart';
import 'package:flutter_app_review/route.dart';
import 'package:flutter_app_review/route_transition.dart';
import 'package:flutter_app_review/snackbar.dart';
import 'package:flutter_app_review/tabs.dart';
import 'package:flutter_app_review/text_validator.dart';
import 'package:flutter_app_review/theme.dart';
import 'package:flutter_app_review/todo.dart';

void main() => runApp(MyApp());

class Route {
  static const String First = '/first';
  static const String Drawer = '/drawer';
  static const String Hero = '/hero';
  static const String ReturnData = '/returnData';
  static const String PassData = '/passData';
  static const String SnackBar = '/snackBar';
  static const String Orientation = '/orientation';
  static const String Theme = '/theme';
  static const String Tab = '/tab';
  static const String RouteTransition = '/routeTransition';
  static const String CreateLists = '/createLists';
  static const String LongLists = '/longLists';
  static const String FloatingAppBar = '/floatingAppBar';
  static const String MultiTypeList = '/multiTypeList';
  static const String HorizontalList = '/horizontalList';
  static const String GridList = '/gridList';
  static const String CachedImage = '/cachedImage';
  static const String FadeInImage = '/fadeInImage';
  static const String RipplesButton = '/ripplesButton';
  static const String RetrieveTextValue = '/retrieveTextValue';
  static const String TextValidator = '/textValidator';
  static const String AnimatedOpacity = '/animatedOpacity';
  static const String AnimatedProp = '/animatedProp';
}

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        Route.First: (context) => FirstRoute(),
        Route.Drawer: (context) => DrawerHomePage(),
        Route.Hero: (context) => HeroMainScreen(),
        ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
        Route.ReturnData: (context) => ReturnDataHomeScreen(),
        Route.PassData: (context) => TodoScreen(
              todos: List.generate(
                20,
                (i) => Todo('Todo $i',
                    'A description of what needs to be done for Todo $i'),
              ),
            ),
        Route.SnackBar: (context) => SnackBarHome(),
        Route.Orientation: (context) => OrientationPage(),
        Route.Theme: (context) => ThemePage(),
        Route.Tab: (context) => TabPage(),
        Route.RouteTransition: (context) => RouteAnimation(),
        Route.CreateLists: (context) => CreateListView(),
        Route.LongLists: (context) => LongListApp(),
        Route.FloatingAppBar: (context) => FloatingAppBar(),
        Route.MultiTypeList: (context) => MultiTypeList(),
        Route.HorizontalList: (context) => HorizontalList(),
        Route.GridList: (context) => GridList(),
        Route.CachedImage: (context) => CachedImage(),
        Route.FadeInImage: (context) => FadeInImageDemo(),
        Route.RipplesButton: (context) => RipplesButton(),
        Route.RetrieveTextValue: (context) => RetrieveTextValue(),
        Route.TextValidator: (context) => TextValidatorApp(),
        Route.AnimatedOpacity: (context) => AnimatedOpacityApp(),
        Route.AnimatedProp: (context) => AnimatedPropApp(),
      },
      title: 'Welcome to Flutter',
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        fontFamily: 'Georgia',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
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
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child: Text('FirstRoute'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.First);
                  },
                ),
                ElevatedButton(
                  child: Text('Drawer'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.Drawer);
                  },
                ),
                ElevatedButton(
                  child: Text('HeroMain'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.Hero);
                  },
                ),
                ElevatedButton(
                  child: Text('ExtractArgScreen'),
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
                    Navigator.pushNamed(context, Route.ReturnData);
                  },
                ),
                ElevatedButton(
                  child: Text('passData'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.PassData);
                  },
                ),
                ElevatedButton(
                  child: Text('Show SnackBar'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.SnackBar);
                  },
                ),
                ElevatedButton(
                  child: Text('Orientation'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.Orientation);
                  },
                ),
                ElevatedButton(
                  child: Text('Theme'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.Theme);
                  },
                ),
                ElevatedButton(
                  child: Text('Tab'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.Tab);
                  },
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child: Text('Route Transition'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.RouteTransition);
                  },
                ),
                ElevatedButton(
                  child: Text('Create Lists'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.CreateLists);
                  },
                ),
                ElevatedButton(
                  child: Text('Long Lists'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.LongLists);
                  },
                ),
                ElevatedButton(
                  child: Text('Floating AppBar'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.FloatingAppBar);
                  },
                ),
                ElevatedButton(
                  child: Text('Multi-type List'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.MultiTypeList);
                  },
                ),
                ElevatedButton(
                  child: Text('Horizontal List'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.HorizontalList);
                  },
                ),
                ElevatedButton(
                  child: Text('Grid List'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.GridList);
                  },
                ),
                ElevatedButton(
                  child: Text('Cached Image'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.CachedImage);
                  },
                ),
                ElevatedButton(
                  child: Text('FadeIn Image'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.FadeInImage);
                  },
                ),
                ElevatedButton(
                  child: Text('Ripples Button'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.RipplesButton);
                  },
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child: Text('Retrieve TextValue'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.RetrieveTextValue);
                  },
                ),
                ElevatedButton(
                  child: Text('Text Validator'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.TextValidator);
                  },
                ),
                ElevatedButton(
                  child: Text('Animated Opacity'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.AnimatedOpacity);
                  },
                ),
                ElevatedButton(
                  child: Text('Animated Prop'),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.AnimatedProp);
                  },
                ),
                ElevatedButton(
                  child: Text(''),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.RetrieveTextValue);
                  },
                ),
                ElevatedButton(
                  child: Text(''),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.RetrieveTextValue);
                  },
                ),
                ElevatedButton(
                  child: Text(''),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.RetrieveTextValue);
                  },
                ),
                ElevatedButton(
                  child: Text(''),
                  onPressed: () {
                    Navigator.pushNamed(context, Route.RetrieveTextValue);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

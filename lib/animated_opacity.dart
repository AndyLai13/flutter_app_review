import 'package:flutter/material.dart';

class AnimatedOpacityApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Opacity Demo',
      home: AnimatedOpacityWidget(),
    );
  }
}

class AnimatedOpacityWidget extends StatefulWidget {
  @override
  AnimatedOpacityWidgetState createState() => AnimatedOpacityWidgetState();
}

class AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity Demo'),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class OrientationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientation'),
      ),
      body: OrientationList(),
    );
  }
}

class OrientationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
          children: List.generate(
            100,
            (index) => Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
        );
      },
    );
  }
}

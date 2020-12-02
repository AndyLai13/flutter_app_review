import 'package:flutter/material.dart';

class LongListApp extends StatefulWidget {
  LongListApp({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LongListAppState();
}

class LongListAppState extends State<LongListApp> {
  final items = List<String>.generate(20, (index) => "item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Long List'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item),
            background: Container(color: Colors.red),
            child: ListTile(title: Text('$item')),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });

              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("$item dismissed")));
            },
          );
        },
      ),
    );
  }
}

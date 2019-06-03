import 'package:flutter_web/material.dart';

class MyItems extends StatefulWidget {
  @override
  _MyItemsState createState() => _MyItemsState();
}

class _MyItemsState extends State<MyItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
        actions: <Widget>[
          Icon(Icons.help)
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('item'),
          ),
          Dismissible(key: Key('a'),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.swap_horiz),
                  Icon(Icons.swap_horiz),
                  Icon(Icons.swap_horiz),
                ],
              ))
        ],
      ),
    );
  }
}

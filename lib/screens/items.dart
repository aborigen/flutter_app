import 'package:flutter_web/material.dart';

class MyItems extends StatefulWidget {
  @override
  _MyItemsState createState() => _MyItemsState();
}

class _MyItemsState extends State<MyItems> with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(duration: Duration(seconds: 1), vsync: this);
    _animation = CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.0, 1.0, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Заголовок'),
        actions: <Widget>[Icon(Icons.help)],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Элемент списка'),
          ),
          Dismissible(
              key: Key('a'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.swap_horiz),
                  Text('существительное'),
                  Icon(Icons.swap_horiz),
                ],
              )),
          Dismissible(
            key: Key('b'),
            child: Row(
              children: <Widget>[
                Text('7474747474747')],
            ),
            background: Container(color: Colors.red,
              alignment: Alignment.centerLeft,
              child: Text('±±§§§§§§±±±±'),
            ),
            secondaryBackground: Container(color: Colors.green,
              alignment: Alignment.centerRight,
              child: Text('==='),
            ),
          ),
          GestureDetector(
            onHorizontalDragUpdate: _move,
            onHorizontalDragEnd: _handleDragEnd,
            child: Stack(
              children: <Widget>[
                Positioned.fill(child: null),
                SlideTransition(
                    position: Tween<Offset>(
                        begin: Offset.zero,
                        end: Offset(-0.6, 0.0)
                    ).animate(_animation), 
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('-s-s-s-s-s-s-s-')
                      ],
                    ),
                  ),)
              ],
            ),
          )
        ],
      ),
    );
  }

  void _handleDragEnd(DragEndDetails details) {
  }

  void _move(DragUpdateDetails details) {
  }
}

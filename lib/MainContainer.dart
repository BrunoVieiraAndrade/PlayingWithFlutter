import 'dart:math';

import 'package:flutter/material.dart';

class MainContainer extends StatefulWidget {
  final String text;

  MainContainer(this.text);

  @override
  State<StatefulWidget> createState() => new _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  var color = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new FlatButton(
        onPressed: () {
          print("I was pressed!");
          setState((){
            color = _generateRandomColor();
          });
        },
        child: new Center(child: new Text(widget.text)),
        color: color,
      ),
    );
  }

  MaterialColor _generateRandomColor() {
    int random = new Random.secure().nextInt(5);

    switch(random){
      case 1:
        return Colors.green;
        break;
      case 2:
        return Colors.blue;
        break;
      case 3:
        return Colors.red;
        break;
      case 4:
        return Colors.yellow;
        break;
      default:
        return Colors.orange;
        break;
    }
  }
}

import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  var _rowRight = 100.0;
  var text;
  var icon;

  CategoryWidget(String text, IconData icon) {
    this.text = text;
    this.icon = icon;
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    return new Material(
      color: Colors.transparent,
      child: new Container(
        height: _rowRight,
        child: new InkWell(
          borderRadius: new BorderRadius.circular(10.0),
          highlightColor: Colors.deepOrangeAccent,
          splashColor: Colors.deepOrange,
          onTap: () {
            print('I was tapped');
            _navigateToConverter(context);
          },
          child: new Padding(
            padding: new EdgeInsets.all(16.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.only(right: 16.0),
                  child: new Icon(
                    icon,
                    size: 50.0,
                  ),
                ),
                new Center(
                  child: new Text(
                    text,
                    textAlign: TextAlign.center,
                    style: Theme
                        .of(context)
                        .textTheme
                        .display1
                        .copyWith(
                      color: Colors.grey[700],
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToConverter(BuildContext context) {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
    Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context){
          return new Image.asset("images/dog2.png");
        }
    ));
  }
}
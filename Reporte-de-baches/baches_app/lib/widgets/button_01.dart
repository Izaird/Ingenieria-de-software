import 'package:flutter/material.dart';

//Generic button that can be use on any Widget
class Button01 extends StatefulWidget {
  double height;
  double width;
  VoidCallback onPressed;
  final String text;

  Button01({
    Key key,
    @required this.text, //text of the button
    /*we use this variable to recive a function, that will define the behavior
     of our button*/
    @required this.onPressed,
    this.height, //height of the button
    this.width, //width of the button
  });
  @override
  State<StatefulWidget> createState() {
    return _Button01();
  }
}

class _Button01 extends State<Button01> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
        ),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
              colors: [
                Color(0xff4268d3),
                Color(0xff584cd1),
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

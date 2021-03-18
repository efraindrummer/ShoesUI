import 'package:flutter/material.dart';

class SubTitleText extends StatelessWidget {

  final String title;

  const SubTitleText({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1,
      child: Container(
        child: Center(
          child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),),
        ),
      ),
    );
  }
}
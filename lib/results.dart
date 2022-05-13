import 'package:flutter/material.dart';
import 'app.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  _Result createState() => _Result();
}

class _Result extends State<Result> {


  @override
  Widget build(BuildContext context) {
    return Row(
      children: iconList,
    );
  }
}

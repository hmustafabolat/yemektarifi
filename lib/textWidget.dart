import 'package:flutter/material.dart';

class Yazi extends StatelessWidget {
  String icerik;
  double yaziBoyutu;
  var yaziKalinligi;

  Yazi({Key? key, required this.icerik, required this.yaziBoyutu,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      icerik,
      style: TextStyle(
        fontSize: yaziBoyutu,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
    );
  }
}

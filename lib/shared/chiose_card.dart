// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class BmrChioce extends StatefulWidget {
  bool isbmi;
  BmrChioce({this.isbmi});

  @override
  _BmrChioceState createState() => _BmrChioceState();
}

class _BmrChioceState extends State<BmrChioce> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2-20,
      height: 120.0,
      decoration: BoxDecoration(
        color: widget. isbmi == true
            ? const Color.fromRGBO(47, 207, 107, 1)
            : const Color.fromRGBO(246, 246, 246, 1),
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset:const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            'BMI',
            style: TextStyle(
                color: widget. isbmi == true ? Colors.white : Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 40.0),
          ),
        ),
      ),
    );
  }
}

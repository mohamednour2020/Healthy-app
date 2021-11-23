// ignore_for_file: camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final double r;

  const result({
    @required this.r,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(
            color: Color.fromRGBO(47, 207, 107, 1),
          ),
          title: RichText(
              text: const TextSpan(
                  style: TextStyle(
                      fontSize: 23, fontFamily: 'Roboto', color: Colors.black),
                  children: <TextSpan>[
                TextSpan(
                    text: 'BMI ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(47, 207, 107, 1),
                        fontSize: 25)),
                TextSpan(text: 'Result '),
              ]))),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          top: 15.0,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Your BMI is',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 30.0,
                  fontFamily: 'Roboto',
                ),
              ),
              Text(
                r.toStringAsFixed(2),
                style: const TextStyle(
                  color: Color.fromRGBO(47, 207, 107, 1),
                  fontSize: 30.0,
                  fontFamily: 'Roboto',
                ),
              ),
              const Text(
                'BMI is a person’s weight in kilograms divided by the \n square of height in meters, A high BMI can \n indicate high body fatness, and a low BMI \n can indicate too low body fatness',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff686868),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

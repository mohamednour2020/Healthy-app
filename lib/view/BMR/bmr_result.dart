// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmrResult extends StatelessWidget {
  final double bmr;

  // ignore: prefer_const_constructors_in_immutables
  BmrResult({
    @required this.bmr,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color.fromRGBO(47, 207, 107, 1),
          ),
          backgroundColor: Colors.white,
          title: RichText(
              text: const TextSpan(
                  style: TextStyle(
                      fontSize: 23, fontFamily: 'Roboto', color: Colors.black),
                  children: <TextSpan>[
                TextSpan(
                    text: 'BMR ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(47, 207, 107, 1),
                        fontSize: 25)),
                TextSpan(text: 'Result '),
              ]))),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Your BMR is',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontSize: 30.0,
              fontFamily: 'Roboto',
            ),
          ),
          Text(
            bmr.toStringAsFixed(2),
            style: const TextStyle(
              color: Color.fromRGBO(47, 207, 107, 1),
              fontSize: 30.0,
              fontFamily: 'Roboto',
            ),
          ),
          const Text(
            'The BMR is your basal metabolic rate,\nand confirms what kind of metabolism you have.\nOnce you know your BMR, you can calculate\nyour suggested intake of calories.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff686868),
              fontSize: 14,
              fontFamily: 'Roboto',
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(246, 246, 246, 1),
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const Text(
                      'Daily calorie needs based on activity level',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(47, 207, 107, 1),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    RichText(
                        text: TextSpan(
                            style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            children: <TextSpan>[
                          const TextSpan(
                              text: 'sedentary/ little or no exercise --> '),
                          TextSpan(
                              text: '${(bmr * 1.2).round()}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(47, 207, 107, 1),
                                  fontSize: 17)),
                        ])),
                    const SizedBox(
                      height: 5.0,
                    ),
                    RichText(
                        text: TextSpan(
                            style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            children: <TextSpan>[
                          const TextSpan(
                              text: 'light exercise/sports 1-3 days/week -->'),
                          TextSpan(
                              text: '${(bmr * 1.375).round()}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(47, 207, 107, 1),
                                  fontSize: 17)),
                        ])),
                    const SizedBox(
                      height: 5.0,
                    ),
                    RichText(
                        text: TextSpan(
                            style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            children: <TextSpan>[
                          const TextSpan(
                              text:
                                  'moderate exercise/sports 3-5 days/week     -->'),
                          TextSpan(
                              text: '${(bmr * 1.55).round()}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(47, 207, 107, 1),
                                  fontSize: 17)),
                        ])),
                    const SizedBox(
                      height: 5.0,
                    ),
                    RichText(
                        text: TextSpan(
                            style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            children: <TextSpan>[
                          const TextSpan(
                              text:
                                  'hard exercise/sports 6-7 days a week            --> '),
                          TextSpan(
                              text: '${(bmr * 1.725).round()}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(47, 207, 107, 1),
                                  fontSize: 17)),
                        ])),
                    const SizedBox(
                      height: 5.0,
                    ),
                    RichText(
                        text: TextSpan(
                            style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            children: <TextSpan>[
                          const TextSpan(
                              text:
                                  'very hard exercise/sports & physical job        -->'),
                          TextSpan(
                              text: '${(bmr * 1.9).round()}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(47, 207, 107, 1),
                                  fontSize: 17)),
                        ]))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

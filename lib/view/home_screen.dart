import 'package:flutter/material.dart';
import 'package:healthy/shared/chiose_card.dart';
import 'package:healthy/shared/choise_card.dart';
import 'package:healthy/view/BMI/bmi_calc.dart';
import 'package:healthy/view/BMR/bmr_calc.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  bool isbmi;
  HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isbmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: RichText(
                text: const TextSpan(
                    style: TextStyle(
                        fontSize: 23,
                        fontFamily: 'Roboto',
                        color: Colors.black),
                    children: <TextSpan>[
                  TextSpan(text: 'what do you want to '),
                  TextSpan(
                      text: 'Calculate',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(47, 207, 107, 1),
                          fontSize: 25)),
                  TextSpan(text: ' ?'),
                ]))),
        body: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    isbmi = true;
                  });
                },
                child: BmrChioce(
                  isbmi: isbmi,
                )),
            const SizedBox(
              width: 15.0,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    isbmi = false;
                  });
                },
                child: ChoiseCard(
                  isbmi: isbmi,
                  name: 'BMR',
                ))
          ]),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(47, 207, 107, 1),
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white30.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        )
                      ]),
                  child: TextButton(
                      onPressed: () {
                        if (isbmi == true) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Bmi(),
                              ));
                        } else if (isbmi == false) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Bmr(),
                              ));
                        }
                      },
                      child: const Text('Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                          )))))
        ]));
  }
}

import 'package:flutter/material.dart';
import 'package:healthy/view/BMI/bmi_result.dart';

import 'package:height_slider/height_slider.dart';

class Bmi extends StatefulWidget {
  const Bmi({Key key}) : super(key: key);

  @override
  _BmiState createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  int h = 160;
  int age = 18;
  int weight = 50;
  bool ismale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromRGBO(47, 207, 107, 1),
        ),
        backgroundColor: Colors.white,
        title:  RichText(
                text: const TextSpan(
                    style: TextStyle(
                        fontSize: 23,
                        fontFamily: 'Roboto',
                        color: Colors.black),
                    children: <TextSpan>[
                  TextSpan(
                      text: 'BMI ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(47, 207, 107, 1),
                          fontSize: 25)),
                  TextSpan(text: 'calculator '),
                 
                ]))
      ),
      body: ListView(
        
        children: [
         const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Container(
                  width: MediaQuery.of(context).size.width/2-15,
                  height: 180.0,
                  decoration: BoxDecoration(
                    color: ismale == true
                        ?const Color.fromRGBO(47, 207, 107, 1)
                        :const Color.fromRGBO(246, 246, 246, 1),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       const CircleAvatar(
                          backgroundImage: AssetImage('images/male.png'),
                          radius: 30.0,
                        ),
                      const  SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                              color: ismale == true
                                  ? Colors.white
                                  : Colors.black,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    ismale = true;
                  });
                },
              ),
            const  SizedBox(
                width: 15.0,
              ),
              GestureDetector(
                child: Container(
                  width:  MediaQuery.of(context).size.width/2-15,
                  height: 180.0,
                  decoration: BoxDecoration(
                    color: ismale == false
                        ?const Color.fromRGBO(47, 207, 107, 1)
                        :const Color.fromRGBO(246, 246, 246, 1),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      const  CircleAvatar(
                          backgroundImage: AssetImage('images/female.png'),
                          radius: 30.0,
                        ),
                       const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                              color: ismale == false
                                  ? Colors.white
                                  : Colors.black,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    ismale = false;
                  });
                },
              ),
            ],
          ),
         const SizedBox(
            height: 13.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/2-45,
                      height: 180.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset:
                               const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color:const Color.fromRGBO(246, 246, 246, 1),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        const    Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2fcf6b),
                              ),
                            ),
                         const   SizedBox(
                              height: 7.0,
                            ),
                            Text(
                              '$age',
                              style:const TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          const  SizedBox(
                              height: 7.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: 'age-',
                                  mini: true,
                                  backgroundColor:const Color(0xff2fcf6b),
                                  child:const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: 'age+',
                                  mini: true,
                                  backgroundColor:const Color(0xff2fcf6b),
                                  child:const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                   const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width:  MediaQuery.of(context).size.width/2-45,
                      height: 180.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset:
                               const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color:const Color.fromRGBO(246, 246, 246, 1),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              children:const [
                                Text(
                                  'WEIGHT',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff2fcf6b),
                                  ),
                                ),
                                Text(
                                  'kg',
                                  style: TextStyle(
                                    color: Color(0xff383838),
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                           const SizedBox(
                              height: 7.0,
                            ),
                            Text(
                              '$weight',
                              style:const TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                           const SizedBox(
                              height: 7.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'weight-',
                                  mini: true,
                                  backgroundColor:const Color(0xff2fcf6b),
                                  child:const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'weight+',
                                  mini: true,
                                  backgroundColor:const Color(0xff2fcf6b),
                                  child:const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              const  SizedBox(
                  width: 15.0,
                ),
                Container(
                  width:MediaQuery.of(context).size.width-195,
                  height: 380.0,
                  decoration: BoxDecoration(
                    color:const Color.fromRGBO(246, 246, 246, 1),
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
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            children:const [
                              Text(
                                'HEIGHT',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2fcf6b),
                                ),
                              ),
                              Text(
                                'CM',
                                style: TextStyle(
                                  color: Color(0xff383838),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      const  SizedBox(
                          height: 20.0,
                        ),
                        HeightSlider(
                          primaryColor:const Color.fromRGBO(83, 232, 139, 1),
                          accentColor:const Color.fromRGBO(83, 232, 139, 1),
                          numberLineColor:const Color.fromRGBO(83, 232, 139, 1),
                          currentHeightTextColor:
                             const Color.fromRGBO(83, 232, 139, 1),
                          maxHeight: 200,
                          personImagePath:
                              ismale ? 'images/boy.svg' : 'images/girl.svg',
                          minHeight: 130,
                          height: h,
                          onChange: (val) => setState(() => h = val),
                          sliderCircleColor:const Color.fromRGBO(83, 232, 139, 1),
                          unit: 'CM',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        const  SizedBox(
            height: 13.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60.0,
                width: MediaQuery.of(context).size.width/2-20,
                decoration: BoxDecoration(
                  border: Border.all(
                    color:const Color.fromRGBO(47, 207, 107, 1),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white30.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset:const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      age = 18;
                      weight = 50;
                      h = 150;
                      ismale = true;
                    });
                  },
                  child:const Text(
                    'Clear',
                    style: TextStyle(
                      color: Color.fromRGBO(47, 207, 107, 1),
                      fontSize: 20,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
             const SizedBox(
                width: 15.0,
              ),
              Container(
                height: 60.0,
                width: MediaQuery.of(context).size.width/2-20,
                decoration: BoxDecoration(
                  color:const Color.fromRGBO(47, 207, 107, 1),
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white30.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset:const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {
                    double r = (weight / h / h) * 10000;

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => result(
                          r: r,
                        ),
                      ),
                    );
                  },
                  child:const Text(
                    'Calculate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

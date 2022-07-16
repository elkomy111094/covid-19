import 'package:covid_19/constants.dart';
import 'package:covid_19/screens/home_screen.dart';
import 'package:covid_19/widgets/myheader.dart';
import 'package:covid_19/widgets/prev_advice.dart';
import 'package:covid_19/widgets/symptom.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyHeader(
              image: "assets/icons/dr2.svg",
              text: "About Covid-19",
              navTo: HomeScreen()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Symptoms",
              style: kTitleTextStyle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              symptom(
                image: "assets/images/headache.png",
                title: "Headache",
              ),
              symptom(
                image: "assets/images/cough.png",
                title: "Cough",
              ),
              symptom(
                image: "assets/images/fever.png",
                title: "Fever",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Prevention",
              style: kTitleTextStyle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          PrevAdvice(
            title: "Wear Face Mask",
            subTitle:
                "Wearing a face mask in public helps prevent the spread of COVID-19,but only if worn properly, covering both your nose and mouth. ",
          ),
          SizedBox(
            height: 10,
          ),
          PrevAdvice(
            title: "Wash Your Hands",
            subTitle:
                "you should wash your hands continuosly after doing any thing for 3 Minutes , and make the water touch every where in your hands ",
          ),
        ],
      ),
    ));
  }
}

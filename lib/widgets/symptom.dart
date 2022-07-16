import 'package:flutter/material.dart';

import '../constants.dart';

class symptom extends StatelessWidget {
  final String image;
  final String title;

  symptom({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 100,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    image,
                    fit: BoxFit.contain,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: kSubTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

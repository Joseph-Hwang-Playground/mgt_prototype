import 'package:flutter/material.dart';
import 'package:mgt_prototype/bottle_modules/heat_module.dart';
import 'package:mgt_prototype/bottle_modules/hydration_module.dart';

class MyBottle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildBottleInfo(),
          SizedBox(
            height: 8,
          ),
          _buildDisplayBottle(),
          SizedBox(
            height: 8,
          ),
          _buildBottleFunctions(),
          SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}

Widget _buildDisplayBottle() {
  return Container(
    child: SizedBox(
      height: 200,
    ),
  );
}

Widget _buildBottleInfo() {
  return Container(
      padding: EdgeInsets.all(4.0),
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'My Bottle',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          // Image here
        ],
      ));
}

Widget _buildBottleFunctions() {
  return Container(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      HeatModule(),
      SizedBox(
        height: 16,
      ),
      HydrationModule(),
    ],
  ));
}

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
          _buildBottleFunctions(),
        ],
      ),
    );
  }
}

Widget _buildBottleInfo() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'My Bottle',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 8,
      ),
      // Image here
    ],
  );
}

Widget _buildBottleFunctions() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      HeatModule(),
      SizedBox(
        height: 8,
      ),
      HydrationModule(),
    ],
  );
}

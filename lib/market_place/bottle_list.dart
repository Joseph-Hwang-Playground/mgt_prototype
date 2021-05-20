import 'package:flutter/material.dart';

Widget buildBottleList(BuildContext context) {
  return Container(
    height: 520,
    child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: (9 / 16)),
      itemBuilder: (context, index) => _buildBottleCard(),
      itemCount: 12,
      scrollDirection: Axis.vertical,
    ),
  );
}

Widget _buildBottleCard() {
  return Container(
    margin: EdgeInsets.all(4.0),
    child: Row(
      children: [
        Text(
          'Bottle',
          style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
    ),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3))
        ]),
  );
}

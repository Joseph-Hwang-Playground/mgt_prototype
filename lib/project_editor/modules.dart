import 'package:flutter/material.dart';

Widget buildSelectModules(int tabIndex) {
  return Container(
    padding: EdgeInsets.all(4.0),
    child: Column(
      children: [_buildTopBar(tabIndex)],
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
    ),
  );
}

Widget _buildTopBar(int tabIndex) {
  return Container(
    padding: EdgeInsets.all(4.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 5,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
            child: Text(
              'Functions',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          ),
          flex: 1,
        ),
        Container(
          width: 2,
          height: 50,
          decoration: BoxDecoration(color: Colors.grey[100]),
        ),
        Expanded(
          child: TextButton(
            child: Text(
              'Designs',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          ),
          flex: 1,
        )
      ],
    ),
  );
}

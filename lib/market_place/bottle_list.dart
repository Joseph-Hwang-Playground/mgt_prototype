import 'package:flutter/material.dart';
// import 'package:mgt_prototype/project_editor/modules.dart';

// Widget buildModuleList(BuildContext context, int tabIndex, Function toggleTap) {
//   return Container(
//     height: 520,
//     child: Column(
//       children: [
//         buildSelectModule
//       ],
//     )
//   );
// }

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

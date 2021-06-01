import 'package:flutter/material.dart';
import 'package:mgt_prototype/project_editor/designs_view.dart';
import 'package:mgt_prototype/project_editor/functions_view.dart';

Widget buildSelectModules(int tabIndex, Function toggleTap) {
  return Container(
    padding: EdgeInsets.all(4.0),
    child: Column(
      children: [
        _buildTopBar(tabIndex, toggleTap),
        SizedBox(
          height: 8.0,
        ),
        _buildModulesList(tabIndex),
      ],
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
    ),
  );
}

Widget _buildTopBar(int tabIndex, Function toggleTap) {
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
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: tabIndex == 1 ? Colors.black : Colors.blueGrey[100]),
            ),
            onPressed: () {
              toggleTap();
            },
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
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: tabIndex == 2 ? Colors.black : Colors.blueGrey[100]),
            ),
            onPressed: () {
              toggleTap();
            },
          ),
          flex: 1,
        )
      ],
    ),
  );
}

Widget _buildModulesList(int tabIndex) {
  if (tabIndex == 1) {
    return FunctionsView();
  } else {
    return DesignsView();
  }
}

Widget _buildSuggestion() {
  return Container(
    child: ElevatedButton(
      child: Row(
        children: [
          Text(
            'Suggest New Module',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.add)
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      onPressed: () {},
    ),
    decoration: BoxDecoration(
        // color: Colors.deepPurple[200],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          )
        ]),
  );
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mgt_prototype/project_editor/project_editor.dart';

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          _buildToolBar(),
          SizedBox(
            height: 10,
          ),
          ProjectEditor(),
        ],
      ),
    );
  }
}

Widget _buildToolBar() {
  return Container(
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(5.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            flex: 4,
            child: Text(
              'Project 1',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Icon(
              Icons.arrow_drop_down,
              color: Colors.grey,
              size: 24,
            ),
            flex: 1,
          ),
          Expanded(
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange[300],
                    padding: EdgeInsets.all(4.0),
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12)),
                child: Container(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    'Export',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            flex: 2,
          ),
          SizedBox(
            width: 5.0,
          ),
        ],
      ));
}

import 'package:flutter/material.dart';
import 'package:mgt_prototype/project_editor/modules.dart';

class ProjectEditor extends StatefulWidget {
  @override
  State<ProjectEditor> createState() => _ProjectEditorState();
}

class _ProjectEditorState extends State<ProjectEditor> {
  int _tabIndex = 1;

  toggleTab() {
    if (_tabIndex == 1) {
      setState(() {
        _tabIndex = 2;
      });
    } else {
      setState(() {
        _tabIndex = 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _buildEditor(),
          SizedBox(
            height: 8,
          ),
          buildSelectModules(_tabIndex, this.toggleTab),
        ],
      ),
    );
  }
}

Widget _buildEditor() {
  return Container(
    child: Text(
      'Customizing 하고있는 Bottle이 들어갈 예정',
      style: TextStyle(fontSize: 48, color: Colors.white),
    ),
    decoration: BoxDecoration(
      color: Colors.grey,
    ),
    height: 200,
    width: 350,
  );
}

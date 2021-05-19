import 'package:flutter/material.dart';
import 'package:mgt_prototype/project_editor/modules.dart';

class ProjectEditor extends StatefulWidget {
  @override
  State<ProjectEditor> createState() => _ProjectEditorState();
}

class _ProjectEditorState extends State<ProjectEditor> {
  int _tabIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _buildEditor(),
          SizedBox(
            height: 8,
          ),
          buildSelectModules(_tabIndex),
        ],
      ),
    );
  }
}

Widget _buildEditor() {
  return Container(
    child: SizedBox(
      height: 200,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:mgt_prototype/model/response/module_response.dart';
import 'package:mgt_prototype/project_editor/designs_view.dart';
import 'package:mgt_prototype/project_editor/functions_view.dart';
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
    final FunctionModuleResponse magneticMixer = FunctionModuleResponse(
        'Magnetic Mixer',
        'assets/modules/magnetic_mixer.jpg',
        '''Magnetic mixer module lets you mix various ingredients 
        with magnetic power. Since it works with magnetic power, 
        it has no noise, silent enough!''',
        50,
        'Mix various ingredients with slience');
    final DesignModuleResponse middleSmooth = DesignModuleResponse(
        'Middle Smooth',
        'assets/modules/middle_plain.jpg',
        'This module gives very awesome middle bottle design for your own custom bottle!',
        25,
        'Modern');
    final FunctionModuleResponse filter = FunctionModuleResponse(
        'Filter',
        'assets/modules/filter_main.jpg',
        '''Filter module provides filtering function which can be useful 
        in situations like pouring tea, making cocktail, etc''',
        30,
        'Filtering solid among liquid');
    final DesignModuleResponse topSmooth = DesignModuleResponse(
        'Top Smooth',
        'assets/modules/top_plain.jpg',
        'This module provies very awesome top bottle design for your own custom bottle!',
        20,
        'Modern');

    return Container(
      child: Column(
        children: [
          functionModuleCardMini(magneticMixer),
          SizedBox(
            height: 8.0,
          ),
          designModuleCardMini(middleSmooth),
          SizedBox(
            height: 8.0,
          ),
          functionModuleCardMini(filter),
          SizedBox(
            height: 8.0,
          ),
          designModuleCardMini(topSmooth),
          SizedBox(
            height: 32.0,
          ),
          _buildPriceIndicator()
        ],
      ),
    );
  }
}

Widget _buildPriceIndicator() {
  return Container(
    padding: EdgeInsets.all(6.0),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ]),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              'Total Price: ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              '125\$',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        SizedBox(
          height: 8.0,
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      padding: EdgeInsets.all(4.0),
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 12)),
                  child: Container(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      'Order Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              flex: 1,
            )
          ],
        )
      ],
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
    ),
  );
}

// Widget _buildEditor() {
//   return Container(
//     child: Text(
//       'Customizing 하고있는 Bottle이 들어갈 예정',
//       style: TextStyle(fontSize: 48, color: Colors.white),
//     ),
//     decoration: BoxDecoration(
//       color: Colors.grey,
//     ),
//     height: 200,
//     width: 350,
//   );
// }

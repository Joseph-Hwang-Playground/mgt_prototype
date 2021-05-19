import 'package:flutter/material.dart';

class DesignsView extends StatelessWidget {
  final ScrollController _controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemBuilder: (context, index) => _designModuleCard(),
        separatorBuilder: (context, index) => SizedBox(
          height: 16,
        ),
        itemCount: 4,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        controller: _controller,
      ),
      height: 220,
    );
  }
}

Widget _designModuleCard() {
  return Container(
    padding: EdgeInsets.all(6.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
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
      children: [
        Text(
          'Design Module',
          style: TextStyle(fontSize: 36),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
    ),
    height: 100,
  );
}

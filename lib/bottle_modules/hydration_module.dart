import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HydrationModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'Hydration Module',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text('0L'),
              LinearPercentIndicator(
                width: 100.0,
                lineHeight: 20.0,
                percent: 0.7,
                backgroundColor: Colors.blueGrey,
                progressColor: Colors.lightBlue,
              ),
              Text('2L')
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [Text('600ml left to drink!')],
          )
        ],
      ),
    );
  }
}

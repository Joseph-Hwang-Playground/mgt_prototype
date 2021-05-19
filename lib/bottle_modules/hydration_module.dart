import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HydrationModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              SizedBox(width: 10.0),
              Text(
                'Hydration Module',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                '0L',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(
                width: 9,
              ),
              Expanded(
                child: LinearPercentIndicator(
                  width: 290,
                  lineHeight: 20.0,
                  percent: 0.7,
                  backgroundColor: Colors.blueGrey,
                  progressColor: Colors.lightBlue,
                ),
                flex: 1,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '2L',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SizedBox(
                width: 8,
              ),
              Text(
                '600ml left to drink!',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.blueAccent),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          SizedBox(
            height: 18,
          )
        ],
      ),
    );
  }
}

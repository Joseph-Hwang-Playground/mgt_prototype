import 'package:flutter/material.dart';

class HeatModule extends StatefulWidget {
  @override
  State<HeatModule> createState() => _HeatModuleState();
}

class _HeatModuleState extends State<HeatModule> {
  double _temp = 70;

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
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Heat Module',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.battery_full,
                color: Colors.green,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                '70ºC',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.teal,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              _buildHeatingIndicator(_temp),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Expanded(
              //   child: Text(_temp.toString()),
              //   flex: 1,
              // ),
              SizedBox(
                width: 10,
              ),
              Text(
                _temp.round().toString(),
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              Expanded(
                child: Slider(
                  value: _temp,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  onChanged: (double value) {
                    setState(() {
                      _temp = value;
                    });
                  },
                ),
                flex: 1,
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget _buildHeatingIndicator(double temp) {
  if (temp < 70) {
    return Icon(
      Icons.fireplace,
      color: Colors.blue,
    );
  }
  if (temp > 70) {
    return Icon(
      Icons.fireplace,
      color: Colors.red,
    );
  }
  return Icon(Icons.fireplace);
}

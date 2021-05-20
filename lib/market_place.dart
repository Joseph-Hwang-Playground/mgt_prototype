import 'package:flutter/material.dart';
import 'package:mgt_prototype/market_place/bottle_list.dart';

class MarketPlace extends StatefulWidget {
  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode _focus = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0),
      margin: EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          _buildSearch(_formKey, _focus),
          buildBottleList(context),
        ],
      ),
    );
  }
}

Widget _buildSearch(Key key, FocusNode focusNode) {
  return Container(
      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: focusNode.hasFocus ? Colors.blueGrey : Colors.blue[400],
      ),
      child: Form(
        key: key,
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search for your bottle!',
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                  border: InputBorder.none,
                ),
                focusNode: focusNode,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              flex: 4,
            ),
            Expanded(
              child: TextButton(
                child: Icon(
                  Icons.search,
                  size: 32.0,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              flex: 1,
            ),
          ],
        ),
      ));
}

import 'package:flutter/material.dart';
import 'package:mgt_prototype/model/data/dummy_repository.dart';
import 'package:mgt_prototype/model/response/module_response.dart';

class FunctionsView extends StatelessWidget {
  final List<FunctionModuleResponse> _functionModules =
      DummysRepository.loadFunctionModuleResponses();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemBuilder: (context, index) =>
            FunctionModuleCard(_functionModules[index]),
        separatorBuilder: (context, index) => SizedBox(
          height: 16,
        ),
        itemCount: _functionModules.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        // physics: AlwaysScrollableScrollPhysics(),
        // controller: _controller,
      ),
      height: 445,
    );
  }
}

class FunctionModuleCard extends StatefulWidget {
  final FunctionModuleResponse functionModule;

  FunctionModuleCard(this.functionModule);

  @override
  State<FunctionModuleCard> createState() =>
      _FunctionModuleCardState(functionModule);
}

class _FunctionModuleCardState extends State<FunctionModuleCard> {
  final FunctionModuleResponse functionModule;

  _FunctionModuleCardState(this.functionModule);

  bool _added = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
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
          Column(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child:
                      Image.asset(functionModule.imgUrl, fit: BoxFit.fitWidth),
                ),
                width: 330,
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                width: 330,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      functionModule.name,
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '${functionModule.price.toString()}\$',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.teal),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Container(
                child: Text(
                  'Function: ${functionModule.function}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                width: 330,
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                child: Text(
                  functionModule.description,
                  style: TextStyle(fontSize: 16),
                ),
                width: 330,
              ),
              SizedBox(
                height: 12.0,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _added = !_added;
                  });
                },
                child: Row(
                  children: [
                    Text(_added ? 'Module is Added!' : 'Add To Project'),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(_added ? Icons.not_interested : Icons.add_circle)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    primary: _added ? Colors.grey : Colors.blue,
                    textStyle:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                    padding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: _added ? 73.0 : 85.0)),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      // height: 100,
    );
  }
}

Widget functionModuleCardMini(FunctionModuleResponse functionModule) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
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
        Container(
          child: Image.asset(functionModule.imgUrl, fit: BoxFit.fitWidth),
          width: 100,
        ),
        SizedBox(
          width: 5.0,
        ),
        Column(
          children: [
            Container(
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    functionModule.name,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    '${functionModule.price.toString()}\$',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Container(
              child: Text(
                'Function: ${functionModule.function}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              width: 250,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
        )
      ],
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
    ),
    height: 95,
  );
}

import 'package:flutter/material.dart';
import 'package:mgt_prototype/model/data/dummy_repository.dart';
import 'package:mgt_prototype/model/response/module_response.dart';

class DesignsView extends StatelessWidget {
  // final ScrollController _controller = new ScrollController();
  final List<DesignModuleResponse> _designModules =
      DummysRepository.loadDesignModuleResponses();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemBuilder: (context, index) =>
            _designModuleCard(_designModules[index]),
        separatorBuilder: (context, index) => SizedBox(
          height: 16,
        ),
        itemCount: _designModules.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        // physics: AlwaysScrollableScrollPhysics(),
        // controller: _controller,
      ),
      height: 390,
    );
  }
}

Widget _designModuleCard(DesignModuleResponse designModule) {
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
                child: Image.asset(designModule.imgUrl, fit: BoxFit.fitWidth),
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
                    designModule.name,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    '${designModule.price.toString()}\$',
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
                'Design: ${designModule.design}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              width: 330,
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              child: Text(
                designModule.description,
                style: TextStyle(fontSize: 16),
              ),
              width: 330,
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

Widget designModuleCardMini(DesignModuleResponse designModule) {
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
          child: Image.asset(designModule.imgUrl, fit: BoxFit.fitWidth),
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
                    designModule.name,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    '${designModule.price.toString()}\$',
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
                'Design: ${designModule.design}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              width: 250,
            ),
            // SizedBox(
            //   height: 8.0,
            // ),
            // Container(
            //   child: Text(
            //     designModule.description,
            //   ),
            //   width: 250,
            // )
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

import 'package:flutter/material.dart';
import 'package:mgt_prototype/model/data/dummy_repository.dart';
import 'package:mgt_prototype/model/response/challenge_response.dart';

class ChallengePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 24.0,
          ),
          _buildChallengePageHeader(),
          SizedBox(
            height: 36.0,
          ),
          ChallengesView(),
        ],
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}

Widget _buildChallengePageHeader() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
    width: 400,
    child: Column(
      children: [
        Text(
          'Challenges',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          'Join the challenges to make your life even better!',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey[700]),
        ),
        SizedBox(
          height: 8.0,
        ),
        ElevatedButton(onPressed: () {}, child: Text('New Challenge')),
      ],
    ),
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
  );
}

class ChallengesView extends StatelessWidget {
  final List<ChallengeResponse> challenges =
      DummysRepository.loadChallengeResponses();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => _buildChallengeCard(challenges[index]),
      separatorBuilder: (context, index) => SizedBox(
        height: 8.0,
      ),
      itemCount: challenges.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
    );
  }
}

Widget _buildChallengeCard(ChallengeResponse challenge) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(5.0),
          child: Container(
            child: Center(
              child: Text(
                challenge.imgIcon,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: challenge.bgColor),
            padding: EdgeInsets.all(8.0),
            width: 60,
            height: 60,
          ),
          width: 80,
          height: 80,
        ),
        SizedBox(
          width: 5.0,
        ),
        Container(
          child: Column(
            children: [
              Text(
                challenge.subject,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                challenge.description,
                style: TextStyle(color: Colors.grey[700]),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                challenge.due,
                style: TextStyle(color: Colors.grey[700]),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          width: 250,
        ),
        SizedBox(
          width: 8.0,
        ),
        Icon(Icons.chevron_right)
      ],
    ),
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
  );
}

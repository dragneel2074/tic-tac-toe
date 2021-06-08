import 'package:flutter/material.dart';
import 'package:tictactoe/constants/constants.dart';
import 'Home_Page_Screen.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({
    Key key,
    @required this.scoreo,
    @required this.scorey,
  }) : super(key: key);

  final int scoreo;
  final int scorey;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: darkmode ? darkboarddecoration : boarddecoration,
        child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 0, right: 20),
              child: Column(
                children: [
                  Text('PLAYER O',
                      style: darkmode ? darkscoreboard : scoreboard),
                  SizedBox(height: 15),
                  Text(scoreo.toString(),
                      style: darkmode ? darknscoreboard : nscoreboard),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 20, right: 0),
              child: Column(
                children: [
                  Text('PLAYER X',
                      style: darkmode ? darkscoreboard : scoreboard),
                  SizedBox(height: 15),
                  Text(scorey.toString(),
                      style: darkmode ? darknscoreboard : nscoreboard)
                ],
              ),
            )
          ],
        ),
      ],
    ),
        ),
      );
  }
}

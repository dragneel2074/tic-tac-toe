import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tictactoe/Ads/Admob.dart';
import 'package:tictactoe/constants/constants.dart';
import 'package:tictactoe/screens/scoreboard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

bool darkmode = false;

class _MyHomePageState extends State<MyHomePage> {
  List<String> display = ["", "", "", "", "", "", "", "", ""];
  bool oturn = true;
  int scoreo = 0;
  int scorey = 0;
  int filledBox = 0;

  _tapped(index) {
    setState(() {
      if (oturn && display[index] == "") {
        display[index] = "O";
        filledBox += 1;
      } else if (!oturn && display[index] == "") {
        display[index] = "X";
        filledBox += 1;
      }
      oturn = !oturn;
      checkwin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: darkmode ? Colors.grey[850] : Colors.grey[300],
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Hero(
                    tag: 'tac',
                    child: Text(
                      'TIC TAC TOE',
                      style: darkmode
                          ? darkscoreboard.copyWith(fontSize: 20)
                          : scoreboard.copyWith(fontSize: 20),
                    ),
                  ),
                ),
               // SizedBox(height: 10),
                Expanded(child: ScoreBoard(scoreo: scoreo, scorey: scorey)),
                SizedBox(height: 5),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 9,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              _tapped(index);
                            },
                            child: Container(
                              decoration: darkmode
                                  ? darkgriddecoration
                                  : griddecoration,
                              child: Center(
                                child: Text(
                                  display[index],
                                  style: darkmode ? darkoxystyle : oxstyle,
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                SizedBox(height: 5),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                child: Icon(
                                  Icons.wb_sunny,
                                  color: Colors.blueGrey[600],
                                  size: 30,
                                ),
                                onPressed: () {
                                  setState(() {
                                    darkmode = false;
                                  });
                                },
                              ),
                              TextButton(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                onPressed: () {
                                  setState(() {
                                    darkmode = true;
                                  });
                                },
                              )
                            ]),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                onPressed: _clearScreen,
                                child: Text(
                                  'RESET GAME',
                                  style: dialogfont,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.red, // background
                                    onPrimary: Colors.white),
                                child: Text('RESET SCORES', style: dialogfont),
                                onPressed: _resetScores,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.all(2),
                //   child: AdWidget(
                //     key: UniqueKey(),
                //     ad: AdMobService.createBannerAd()..load(),
                //   ),
                //   ),
              ],
            ),
          )),
    );
  }

  checkwin() {
    if (display[0] == display[1] &&
        display[0] == display[2] &&
        display[0] != "") {
      showDialogBox(display[0]);
    }
    if (display[3] == display[4] &&
        display[3] == display[5] &&
        display[3] != "") {
      showDialogBox(display[3]);
    }
    if (display[6] == display[7] &&
        display[6] == display[8] &&
        display[6] != "") {
      showDialogBox(display[6]);
    }
    if (display[0] == display[3] &&
        display[0] == display[6] &&
        display[0] != "") {
      showDialogBox(display[6]);
    }
    if (display[1] == display[4] &&
        display[1] == display[7] &&
        display[1] != "") {
      showDialogBox(display[1]);
    }
    if (display[2] == display[5] &&
        display[2] == display[8] &&
        display[2] != "") {
      showDialogBox(display[5]);
    }
    if (display[0] == display[4] &&
        display[0] == display[8] &&
        display[0] != "") {
      showDialogBox(display[0]);
    }
    if (display[2] == display[4] &&
        display[2] == display[6] &&
        display[2] != "") {
      showDialogBox(display[6]);
    }
    if (filledBox == 9) {
      showDrawDialog();
    }
  }

  showDrawDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'DRAW',
              style: commonfont,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  _clearScreen();
                  Navigator.pop(context);
                },
                child: Text(
                  'Play Again!',
                  style: commonfont,
                ),
              ),
            ],
          );
        });
    _clearScreen();
  }

  showDialogBox(String winner) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Winner is: $winner!', style: commonfont),
            actions: [
              TextButton(
                  onPressed: () {
                    _clearScreen();
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Play Again!',
                    style: commonfont,
                  )),
            ],
          );
        });
    if (winner == 'O') {
      scoreo += 1;
    } else if (winner == 'X') {
      scorey += 1;
    }
    _clearScreen();
  }

  _clearScreen() {
    setState(() {
      display = ["", "", "", "", "", "", "", "", ""];
      filledBox = 0;
    });
  }

  _resetScores() {
    setState(() {
      scoreo = 0;
      scorey = 0;
    });
  }
}

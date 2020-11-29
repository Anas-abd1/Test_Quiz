import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key key}) : super(k//ey: key);
  final int resultscore;
  final Function reset;
  Result(this.resultscore, this.reset);

  String get Resultpharse {
    String Result;
    if (resultscore >= 20) {
      Result = 'You are awsome';
    } else if ((resultscore <= 20) & (resultscore >= 15)) {
      Result = ' Great but you can do more ';
    } else if ((resultscore <= 15) & (resultscore >= 10)) {
      Result = ' Please focus ';
    } else {
      Result = ' Focus ';
    }
    return Result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            Resultpharse,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(child: Text('Restart Quiz'), onPressed: reset)
      ],
    );
  }
}

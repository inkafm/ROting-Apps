import 'package:flutter/material.dart';

typedef void Callback(int val);

class EvaluationDrawer extends StatelessWidget {
  const EvaluationDrawer({
    required this.questions,
    required this.question_number,
    required this.evaluationNumberCallback
  });

  final List questions;
  final int question_number;
  final Callback evaluationNumberCallback;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 80,
            child: DrawerHeader(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                'List Materi',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
          for(var i = 0; i < questions.length; i++) Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Ink(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: Colors.lightBlue),
                ),
                color: question_number == questions[i]['id'] ? Colors.blue : Colors.transparent,
              ),
              child: ListTile(
                title: Text(
                  "Soal " + (i + 1).toString(),
                  style: TextStyle(
                    color: question_number == questions[i]['id'] ? Colors.white : Colors.black,
                  ),
                ),
                onTap: () => {
                  evaluationNumberCallback(questions[i]['id']),
                  Navigator.of(context).pop()
                },
              ),
            ),
          ),
          Ink(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.orange,
              ),
              child: ListTile(
                title: Text('Kembali'),
                onTap: () => {
                  Navigator.pushNamed(
                    context, 
                    '/home',
                  )
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
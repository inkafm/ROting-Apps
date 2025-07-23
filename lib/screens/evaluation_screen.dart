import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:topology_app/core/data/question_data.dart';
import 'package:topology_app/core/global.dart';
import 'package:topology_app/widgets/reusable_widgets/question_widget.dart';

class EvaluationScreen extends StatefulWidget {
  const EvaluationScreen({super.key});

  @override
  State<EvaluationScreen> createState() => _EvaluationScreenState();
}

class _EvaluationScreenState extends State<EvaluationScreen> {
  var color = Global.primaryColor;
  late String name = '';
  int point = 0;
  int _question_number = 0;
  bool _disabled_submit = true;
  bool _disabled_check = false;
  String _student_answer = '';
  String _answer_key = '';
  late List _questions;
  DatabaseReference ref = FirebaseDatabase.instance.ref("scores");

  @override
  void initState() {
    _questions = QuestionData.questions;

    _loadData();
    getQuizNumber();
    super.initState();
  }

  void _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? '';
    });
  }

  checkAnswer() {
    if (_student_answer != '') {
      if (_student_answer != _answer_key) {
        setState(() {
          _disabled_check = true;
          _disabled_submit = false;
        });

        // show notif
        // Fluttertoast.showToast(
        //   msg: "Jawaban kamu salah!",
        //   toastLength: Toast.LENGTH_LONG,
        //   gravity: ToastGravity.CENTER,
        //   textColor: Colors.white,
        //   webBgColor: "linear-gradient(to right, #dc1c13, #dc1c13)",
        // );
      } else {
        // Global.setEvaluationPoint();
        setState(() {
          _disabled_check = true;
          _disabled_submit = false;
        });

        // show notif
        // Fluttertoast.showToast(
        //   msg: "Jawaban kamu benar!",
        //   toastLength: Toast.LENGTH_LONG,
        //   gravity: ToastGravity.CENTER,
        //   textColor: Colors.white,
        //   webBgColor: "linear-gradient(to right, #0ccf4d, #0ccf4d)",
        // );
      }
    } else {
      Fluttertoast.showToast(
        msg: "Kamu belum memilih jawaban!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.orange,
        textColor: Colors.white,
        webBgColor: "linear-gradient(to right, #ff9800, #ff9800)",
      );
    }
  }

  getQuizNumber() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var quizNumber = prefs.getInt('quiz-number');
    if (quizNumber != null) {
      setState(() {
        _question_number = quizNumber;
      });
    }
  }

  setQuizNumber(param) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('quiz-number', param);
  }

  void reset() {
    setState(() {
      _student_answer = '';
      _disabled_submit = true;
      _disabled_check = false;
    });
  }

  redirectToAssessment() {
    return Navigator.pushNamed(
      context, 
      '/assessment'
    );
  }

  void submit() async {
    reset();
    // Save to db
    DatabaseReference child = ref.child(name);
    await child.set({
      "score": point * 2.5,
    });

    if (_question_number != 40) {
      setQuizNumber(_question_number + 1);
      getQuizNumber();

      _question_number++;
    } else {
      Global.resetEvaluationPoint();
      redirectToAssessment();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Evaluasi",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontFamily: 'Ubuntu'
          ),
        ),
        backgroundColor: Color(color),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ), 
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(color),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight: Radius.zero,
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Pertanyaan " + _question_number.toString() + '/40',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ],
                ),
              ),
              // Text('Status ' + _status),
              // Text('Message ' + _message),
              // Text('Jawaban ' + _student_answer),
              // Text('Point ' + Global.evaluation_point.toString()),
              // Text('Question Number ' + Global.evaluation_number.toString()),
              // Text("question number" + _question_number.toString()),
              // Text(_quizNumber.toString()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    QuestionWidget(
                      title: _questions[_question_number]['title'],
                      image: _questions[_question_number]['image'],
                      answer_key: _questions[_question_number]['answer_key'],
                      answers: _questions[_question_number]['answers'],
                      student_answer: _student_answer,
                      isChecked: _disabled_check,
                      callback: (val) => setState(() {
                        _student_answer = val;
                        // _answer_key = _questions[_question_number]['answer_key'];
                      })
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _disabled_check ? null : () => {
                        checkAnswer(),
                        setState(() {
                          if (_student_answer == _questions[_question_number]['answer_key']) {
                            point = point + 1;
                          }
                        })
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Cek Jawaban',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: _disabled_submit ? null : submit,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(color)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _question_number == 40 ? 'Selesai' : 'Lanjut',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
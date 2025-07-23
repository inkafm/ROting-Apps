import 'package:flutter/material.dart';
import 'package:topology_app/core/global.dart';

const alpabets = ["A", "B", "C", "D", "E"];
typedef void StringCallback(String val);

class QuestionWidget extends StatelessWidget {
  QuestionWidget({
    required this.title,
    required this.image,
    required this.answer_key,
    required this.answers,
    required this.student_answer,
    required this.isChecked,
    required this.callback
  });

  String title;
  String image;
  String answer_key;
  String student_answer;
  bool isChecked;
  List<String> answers;
  final StringCallback callback;

  @override
  Widget build(BuildContext context) {
    var color = Global.primaryColor;

    checkAnswer(answer) {
      if (isChecked) {
        if (answer == answer_key && answer != student_answer) {
          return Colors.green;
        } else if (answer == answer_key && answer == student_answer) {
          return Colors.green;
        } else if (answer != answer_key && answer == student_answer) {
          return Colors.red;
        } else if (answer != answer_key && answer != student_answer) {
          return null;
        }
      } else {
        if (student_answer == answer) {
          return Color(color);
        }
      }
    }

    checkTextColor(answer) {
      if (isChecked) {
        if (answer == answer_key && answer != student_answer) {
          return Colors.white;
        } else if (answer == answer_key && answer == student_answer) {
          return Colors.white;
        } else if (answer != answer_key && answer == student_answer) {
          return Colors.white;
        } else if (answer != answer_key && answer != student_answer) {
          return null;
        }
      } else {
        if (student_answer == answer) {
          return Colors.white;
        }
      }
    }
    
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          if (image != "") Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 20,
                child: Image.asset(
                  image,
                ),
              ),
            ],
          ),
          Text(
            title,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          for(var i = 0; i < answers.length; i++) Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                InkWell(
                  onTap: () => isChecked ? null : callback(answers[i]),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width / 1.15,
                    // height: MediaQuery.of(context).size.height,
                    constraints: BoxConstraints(
                      minHeight: 50
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(color)),
                      color: checkAnswer(answers[i]),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          alpabets[i] + ". " + answers[i],
                          maxLines: 3,
                          style: TextStyle(
                            color: checkTextColor(answers[i]),
                          ),
                        ),
                      ],
                    ),
                    // child: Expanded(
                    //   child: Row(
                    //   children: [
                    //     // Wrap(
                    //     //   spacing: 10,
                    //     //   children: [
                    //     //     Text(
                    //     //       alpabets[i] + ".",
                    //     //       style: TextStyle(
                    //     //         color: checkTextColor(answers[i]),
                    //     //       ),
                    //     //     ),
                    //     //     Expanded(
                    //     //       child: FittedBox(
                    //     //       fit: BoxFit.contain,
                    //     //       child: Text(
                    //     //         answers[i] + answers[i] + answers[i],
                    //     //         style: TextStyle(
                    //     //           color: checkTextColor(answers[i]),
                    //     //         ),
                    //     //       ),
                    //     //     ),
                    //     //     )
                    //     //   ],
                    //     // ),
                    //   ]
                    // ),
                    // )
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:topology_app/core/global.dart';
import 'package:topology_app/widgets/topology_widgets/question_dinamic_topology_1/dinamic_1_question_1.dart';
import 'package:topology_app/widgets/topology_widgets/question_dinamic_topology_1/dinamic_1_question_2.dart';
import 'package:topology_app/widgets/topology_widgets/question_dinamic_topology_1/dinamic_1_question_3.dart';

class DinamicTopology1 extends StatefulWidget {
  const DinamicTopology1({super.key});

  @override
  State<DinamicTopology1> createState() => DinamicTopology1State();
}

class DinamicTopology1State extends State<DinamicTopology1> {
  late int _question_number = 1;
  late List questions = [
    "Jika pada router 1 dikonfigurasi secara dinamis, maka tunjukkan alamat jaringan (network address) yang dimasukkan oleh administrator apabila dalam kasus ini menggunakan protocol rip routing….",
    "Lakukan hal yang sama untuk menkonfigurasi router 2!",
    "Selanjutnya, tunjukkan alamat jaringan yang dimasukkan oleh administrator untuk menkonfigurasi router 3!",
  ];

  @override
  Widget build(BuildContext context) {
    var color = Global.primaryColor;
    
    switchQuestion(question_number) {
      switch (question_number) {
        case 1:
          return Dinamic1Question1();
          break;
        case 2:
          return Dinamic1Question2();
          break;
        case 3:
          return Dinamic1Question3();
          break;
        default:
          return Container(
            child: Center(
              child: Text("Konten Masih Kosong"),
            ),
          );
      }
    }

    void _decrementPageNumber() {
      setState(() {
        if (_question_number > 1) _question_number--;
      });
    }

    void _incrementPageNumber() {
      setState(() {
        if (_question_number <= 3) _question_number++;
      });
    }

    redirectBack() {
      return Navigator.pushNamed(
        context, 
        '/exercise'
      );
    }

    return Column(
      children: [
        Text(
          questions[_question_number - 1], // question
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        switchQuestion(_question_number),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (_question_number != 1) ElevatedButton(
                onPressed: _decrementPageNumber,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_left,
                        color: Colors.white,
                        size: 25,
                      ),
                      Text(
                        'Kembali',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _question_number == questions.length ? redirectBack : _incrementPageNumber,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(color)
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _question_number == questions.length ? 'Selesai' : 'Lanjut',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
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
        )
      ],
    );
  }
}
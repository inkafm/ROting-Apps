import 'package:flutter/material.dart';
import 'package:topology_app/core/global.dart';
import 'package:topology_app/widgets/topology_widgets/question_static_topology_4/topology_4_question_1.dart';
import 'package:topology_app/widgets/topology_widgets/question_static_topology_4/topology_4_question_2.dart';
import 'package:topology_app/widgets/topology_widgets/question_static_topology_4/topology_4_question_3.dart';

class StaticTopology4 extends StatefulWidget {
  const StaticTopology4({super.key});

  @override
  State<StaticTopology4> createState() => _StaticTopology4State();
}

class _StaticTopology4State extends State<StaticTopology4> {
  late int _question_number = 1;
  late List questions = [
    "Jika pada router 1 dikonfigurasi secara statis, maka tunjukkan jaringan mana saja beserta next hop yang harus dimasukkan ke dalam tabel routing….",
    "Pada interface berapakah harus dibuat Ip Segment?",
    "Setelah dilakukan routing, maka konfigurasi gateway pada tiap perangkat (client) yang berada pada segment jaringan 3 adalah menggunakan IP Address…."
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var color = Global.primaryColor;
    
    switchQuestion(question_number) {
      switch (question_number) {
        case 1:
          return Topology4Question1();
          break;
        case 2:
          return Topology4Question2();
          break;
        case 3:
          return Topology4Question3();
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
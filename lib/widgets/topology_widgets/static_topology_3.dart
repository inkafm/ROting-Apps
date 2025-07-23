import 'package:flutter/material.dart';
import 'package:topology_app/core/global.dart';
import 'package:topology_app/widgets/topology_widgets/question_static_topology_3/topology_3_question_1.dart';
import 'package:topology_app/widgets/topology_widgets/question_static_topology_3/topology_3_question_2.dart';
import 'package:topology_app/widgets/topology_widgets/question_static_topology_3/topology_3_question_3.dart';

class StaticTopology3 extends StatefulWidget {
  const StaticTopology3({super.key});

  @override
  State<StaticTopology3> createState() => _StaticTopology3State();
}

class _StaticTopology3State extends State<StaticTopology3> {
  late int _question_number = 1;
  late List questions = [
    "Pada jenis topologi ini, IP Address yang menjadi gateway pada tiap perangkat yang berada pada segmen jaringan 2 agar jaringan ini dapat berkomunikasi/ terhubung dengan jaringan lain adalah….",
    "Next hop yang menjadi perantara yang menghubungkan antar segmen jaringan ketika mengkonfigurasi router 2 adalah….",
    "Pada contoh kasus ini, PC2 masih tidak dapat berkomunikasi dengan PC3 yang berada di jaringan yang berbeda, hal ini dikarenakan terdapat suatu kesalahan dalam konfigurasinya, coba tunjukkan IP Address yang tepat untuk digunakan sebagai gateway pada node di jaringan 192.168.3.0 !",
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
          return Topology3Question1();
          break;
        case 2:
          return Topology3Question2();
          break;
        case 3:
          return Topology3Question3();
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
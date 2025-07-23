import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:topology_app/core/global.dart';
import 'package:topology_app/screens/home_screen.dart';

class AssessmentScreen extends StatefulWidget {
  const AssessmentScreen({super.key});

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  DatabaseReference ref = FirebaseDatabase.instance.ref("scores");
  var data;

  @override
  void initState() {
    super.initState();
    getScore();
  }

  getScore() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String name = prefs.getString('name') as String;
    if (name != '') {
      final ref = FirebaseDatabase.instance.ref();
      final snapshot = await ref.child('scores/$name').get();
      if (snapshot.exists) {
        setState(() {
          data = snapshot.value;
        });
      } else {
        print('No data available.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var color = Global.primaryColor;
    var score = data != null ? data["score"] : 0;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Penilaian Evaluasi",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontFamily: 'Ubuntu'
          ),
        ),
        backgroundColor: Color(color),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Skor",
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.w500,
                // fontFamily: 'Ubuntu'
              ),
            ),
            SizedBox(height: 5),
            Text(
              score.toString(),
              style: TextStyle(
                color: Colors.green,
                fontSize: 70,
                fontWeight: FontWeight.w700,
                fontFamily: 'Ubuntu'
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen())
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 22,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Kembali',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
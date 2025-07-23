import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:topology_app/core/global.dart';
import 'package:topology_app/screens/assessment_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String name = '';

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  void _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? '';
    });
  }

  checkQuizNumber() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var quizNumber = prefs.getInt('quiz-number');
    if (quizNumber == null) {
      await prefs.setInt('quiz-number', 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    var color = Global.primaryColor;
    var width;
    width = MediaQuery.of(context).size.width;
    // height = MediaQuery.of(context).size.height;
    // var name = Global.name;

    List images = [
      'assets/icons/book.png',
      'assets/icons/logo.png',
      'assets/icons/exam.png',
      'assets/icons/quiz.png',
    ];

    List titles = [
      'Materi',
      'Analogi',
      'Latihan',
      'Evaluasi',
    ];

    List paths = [
      '/material',
      '/analogy',
      '/exercise',
      '/evaluation',
    ];

    final now = new DateTime.now();
    final date = DateFormat.yMMMMEEEEd('id').format(DateTime.parse(now.toString()));
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          color: Color(color),
          child: Column(
            children: [
              Container(
                width: width,
                // height: height * 0.35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        // top: 60,
                        left: 0,
                        right: 0,
                      ),
                      child: Container(
                        width: width,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: AssetImage('assets/images/logo_3.png')
                          )
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        // top: 35,
                        left: 20,
                        right: 20,
                        bottom: 5
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Selamat Datang, ' + name,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  // letterSpacing: 1
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mari kita uji pengetahuan kamu.',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              // letterSpacing: 1
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    )
                  ),
                  width: width,
                  // height: height * 0.50,
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 20,
                    right: 20
                  ),
                  child: Column(
                    children: [
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.1,
                          mainAxisSpacing: 25
                        ),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: images.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () async {
                              if (paths[index] == '/material') {
                                SharedPreferences prefs = await SharedPreferences.getInstance();
                                var progress = prefs.getString('progress') ?? '';
                                if (progress == '') await prefs.setString('progress', '1');

                                Navigator.pushNamed(
                                  context, 
                                  paths[index]
                                );
                              } else if (paths[index] == '/evaluation') {
                                SharedPreferences prefs = await SharedPreferences.getInstance();
                                var quizNumber = prefs.getInt('quiz-number');

                                if (quizNumber == 40) {
                                  Dialogs.showMyDialog(context);
                                } else {
                                  checkQuizNumber();
                                  Navigator.pushNamed(
                                    context, 
                                    paths[index]
                                  );
                                }
                              } else {
                                Navigator.pushNamed(
                                  context, 
                                  paths[index]
                                );
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                bottom: 0,
                                left: 15,
                                right: 15
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(color),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    images[index],
                                    width: 80,
                                  ),
                                  Text(
                                    titles[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Ubuntu',
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: ElevatedButton(
                          onPressed:  () => SystemNavigator.pop(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Keluar',
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Dialogs {
  static Future<void> showMyDialog(context) {
    checkQuizNumber() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt('quiz-number', 1);

      Navigator.pushNamed(
        context, 
        '/evaluation'
      );
    }

    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(20)
          ),
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Informasi Evaluasi",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => AssessmentScreen())
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
                            Icons.scoreboard,
                            color: Colors.white,
                            size: 22,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Lihat Nilai',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      checkQuizNumber();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.refresh,
                            color: Colors.white,
                            size: 22,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Mulai Lagi',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
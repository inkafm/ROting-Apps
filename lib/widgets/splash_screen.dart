import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:topology_app/core/global.dart';
import 'package:topology_app/screens/home_screen.dart';
import 'dart:async';
// import 'package:topology_app/screens/home_screen.dart';
import 'package:topology_app/screens/register_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late String name = '';

  @override
  void initState() {
    // Redirect To Home
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(
        context,
        // MaterialPageRoute(builder: (context) => HomeScreen()));
        MaterialPageRoute(builder: (context) => name == '' ? RegisterScreen() : HomeScreen()));
      }
    );

    _loadData();
    super.initState();
  }

  void _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? '';
    });
  }
  
  @override
  Widget build(BuildContext context) {
    var color = Global.primaryColor;

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color(color),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              width: 250,
              // height: 100,
              // image: AssetImage('assets/icons/networking.png'),
              image: AssetImage('assets/images/logo_1.png'),
            ),
            // SizedBox(height: 10),
            // Text(
            //   'ROting',
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 30.0,
            //     fontWeight: FontWeight.bold,
            //     fontFamily: 'Ubuntu'
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
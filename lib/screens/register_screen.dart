import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:topology_app/core/global.dart';
import 'package:topology_app/screens/home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var color = Global.primaryColor;
  TextEditingController _namaController = TextEditingController();

  submit() async {
    if (_namaController.text.isNotEmpty) {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      await Global.setName(_namaController.text);
      await prefs.setString('name', _namaController.text);
      await Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context) => HomeScreen())
      );
    } else {
      await Fluttertoast.showToast(
        msg: "Harap isi nama lengkap kamu!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.orange,
        textColor: Colors.white,
        webBgColor: "linear-gradient(to right, #ff9800, #ff9800)",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 10),
            // Text(
            //   'ROting',
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 30.0,
            //     fontWeight: FontWeight.bold,
            //     fontFamily: 'Ubuntu'
            //   ),
            // ),
            // SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  TextField(
                    controller: _namaController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: Colors.transparent, width: 0.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: Colors.transparent, width: 0.0),
                      ),
                      hintText: 'Nama Lengkap',
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: submit,
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF07a9dd), Color(0xFF78cce6)],
                          end: Alignment.centerLeft,
                          begin: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      child: Text(
                        "Masuk",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nunito'
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
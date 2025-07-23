import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:topology_app/core/global.dart';
import 'package:topology_app/screens/assessment_screen.dart';
import 'package:topology_app/screens/evaluation_screen.dart';
import 'package:topology_app/screens/analogy_screen.dart';
import 'package:topology_app/screens/home_screen.dart';
import 'package:topology_app/screens/material_screen.dart';
import 'package:topology_app/screens/register_screen.dart';
import 'package:topology_app/screens/exercise_screen.dart';
import 'package:topology_app/widgets/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(options: FirebaseOptions(
      apiKey: "AIzaSyB35Pu_91H20LoGdnfYdoXgFZAA4stYqpQ",
      authDomain: "topology-app.firebaseapp.com",
      projectId: "topology-app",
      storageBucket: "topology-app.appspot.com",
      messagingSenderId: "418140599647",
      appId: "1:418140599647:web:f08a9fb7bccf3a29e2f2ea",
      measurementId: "G-LTHTMKWY94"
    ));
  } else {
    await Firebase.initializeApp();
  }

  initializeDateFormatting();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var color = Global.primaryColor;
    
    return MaterialApp(
      title: 'ROting',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(color)),
        useMaterial3: true,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => HomeScreen(),
        '/material': (context) => MaterialScreen(),
        '/analogy': (context) => ExerciseScreen(),
        // '/analogy-detail': (context) => AnalogyDetailScreen(),
        '/exercise': (context) => AnalogyScreen(),
        '/evaluation': (context) => EvaluationScreen(),
        '/assessment': (context) => AssessmentScreen(),
      },
      home: SplashScreen(),
    );
  }
}
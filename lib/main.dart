import 'package:rwadocs/screens/Consultant_Home/consultant_home_screen.dart';
import 'package:rwadocs/screens/Doctors/doctor_main_screen.dart';
import 'package:rwadocs/screens/Patient_Agora/index.dart';
import 'package:rwadocs/screens/login_screen.dart';
import 'package:rwadocs/screens/onboarding_screen.dart';
import 'package:rwadocs/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:
            GoogleFonts.varelaRoundTextTheme(Theme.of(context).textTheme),
      ),
      home: SplashScreen(),
    );
  }
}

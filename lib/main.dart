
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w_security/screens/Inscription.dart';
import 'package:w_security/screens/Loging.dart';
import 'package:w_security/screens/home_screen.dart';
import 'package:w_security/screens/profile.dart';
import 'package:w_security/utils/my_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: MyColors.primary,
    )
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'W security',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MyColors.primary
      ),
      home: Login(),
      routes:{ 
        "profile":(context)=>Profil(),
      }
    );
  }
}

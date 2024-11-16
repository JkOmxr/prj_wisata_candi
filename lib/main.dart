import 'package:flutter/material.dart';
import 'package:prj_wisatacandi_si51/data/candi_data.dart';
import 'package:prj_wisatacandi_si51/screens/detail_screen.dart';
import 'package:prj_wisatacandi_si51/screens/profile_screen.dart';
import 'package:prj_wisatacandi_si51/screens/search_screen.dart';
import 'package:prj_wisatacandi_si51/screens/signin_screen.dart';
import 'package:prj_wisatacandi_si51/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Candi',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.deepPurple),
            titleTextStyle: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
            .copyWith(
                primary: Colors.deepPurple, surface: Colors.deepPurple[100]),
        useMaterial3: true,
      ),
      home: SearchScreen(),
      //home: DetailScreen(
      //candi: candiList[0],
      //),
    );
  }
}

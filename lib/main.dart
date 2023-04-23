//@dart=2.9
import 'package:flutter/material.dart';
import 'package:secondtest/authorization/login_screen.dart';
import 'package:secondtest/core/profile_screen.dart';
import 'package:secondtest/route/route_constants.dart';
import 'package:secondtest/route/routes.dart';

void main() {
  runApp(MainScreen());
}


class MainScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     onGenerateRoute: Routes.generateRoute,
      home: LoginScreen(),

    );
  }
} 


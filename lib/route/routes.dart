

import 'package:flutter/material.dart';
import 'package:secondtest/authorization/login_screen.dart';
import 'package:secondtest/authorization/registration_screen.dart';
import 'package:secondtest/core/profile_screen.dart';
import 'package:secondtest/core/university_list.dart';
import 'route_constants.dart';

class Routes { 
  static Route generateRoute(RouteSettings routeSettings) { 
      switch (routeSettings.name) { 
        case AuthenticationRoute: 
          return MaterialPageRoute(builder: (context) => const LoginScreen()
          );

        case RegistrationRoute: 
           return MaterialPageRoute(builder: (context) => const RegistrationScreen());

        case UniversityListRoute:
          return MaterialPageRoute(builder: (context) => const UniversityList()) ; 
        case ProfileRoute: 
          return MaterialPageRoute(builder: (context) => const ProfilePage()); 

        default: 
             return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      }
  }
}
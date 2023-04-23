import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:secondtest/constants/paddings.dart';
import 'package:secondtest/route/route_constants.dart';
import 'package:secondtest/widgets/mybutton.dart';
import 'package:secondtest/widgets/mypasswordtext.dart';
import 'package:secondtest/widgets/mytextfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Авторизация'),),
      backgroundColor: Color.fromRGBO(243, 244, 246, 1),
        child: Stack(
          
            children: [
              Align(alignment: Alignment.center,
              child: Container(  
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                       const Spacer(),
                       const Spacer(),
                       Padding(
                        padding: ApplicationPaddings.horizontal,
                        child: MyTextField(label: 'Логин или почта'),
                      ),
                       Padding(
                        padding: ApplicationPaddings.horizontal,
                        child: MyPasswordText(label: 'Пароль'),
                      ),

                      Padding(
                        padding: ApplicationPaddings.forButton,
                        child:  MyButton(onPressed: () => Navigator.pushNamed(context, UniversityListRoute), text: 'Войти'),
                      ),
                      Padding(
                        padding: ApplicationPaddings.horizontal,
                        child:  MyButton(onPressed: () => Navigator.pushNamed(context, RegistrationRoute), text: 'Зарегистрироваться'),
                      ),
                      const Spacer(),
          
                ]),
              ),
              
              ),
              
            ],
          ),
      ));
  }
}
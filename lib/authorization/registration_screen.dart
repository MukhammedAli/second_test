import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:secondtest/authorization/login_screen.dart';
import 'package:secondtest/constants/paddings.dart';
import 'package:secondtest/route/route_constants.dart';
import 'package:secondtest/widgets/mybutton.dart';
import 'package:secondtest/widgets/mypasswordtext.dart';
import 'package:secondtest/widgets/mytextfield.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Регистрация'),),
        child: SafeArea(
          child: Stack(
              children: [
                Align(alignment: Alignment.center,
                child: Container(  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                         const Spacer(),
                         
                         Padding(
                          padding: ApplicationPaddings.horizontal,
                          child: MyTextField(label: 'Логин'),
                        ),
                         Padding(
                          padding: ApplicationPaddings.horizontal,
                          child: MyTextField(label: 'Телефон'),
                        ),
                        Padding(
                          padding: ApplicationPaddings.horizontal,
                          child: MyTextField(label: 'Почта'),
                        ),
                         Padding(
                          padding: ApplicationPaddings.horizontal,
                          child: MyPasswordText(label: 'Пароль'),
                        ),
        
                        
                        Padding(
                          padding: ApplicationPaddings.bottom,
                          child:  MyButton(onPressed: () => Navigator.pushNamed(context, AuthenticationRoute), text: 'Создать аккаунт'),
                        ),
                        const Spacer(),
            
                  ]),
                ),
                
                ),
                
              ],
            ),
        ),
      ));
  }
}
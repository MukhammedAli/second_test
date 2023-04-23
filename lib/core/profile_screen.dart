import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:secondtest/constants/paddings.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 244, 246, 1),
      body: CupertinoPageScaffold(
         navigationBar: CupertinoNavigationBar(middle: Text('Профиль'),),
      backgroundColor: Color.fromRGBO(243, 244, 246, 1),
        child: 
          
           Center(
             child: Padding(
              padding: EdgeInsets.symmetric(vertical: 150),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                      
                  Icon(CupertinoIcons.profile_circled, 
                  size: 100,),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text('Name Surname', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24)
                                  ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('email@gmai.com', style: TextStyle(color: Color.fromRGBO(146,146,146,1)),),
                ),

                Container(
    width: 375,
    height: 55,
     child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        
        backgroundColor: Color.fromRGBO(254, 254, 254, 1),
        alignment: Alignment(-1, 0)
      ),
      onPressed: ()=> print('hello'), child: Padding(
        padding: const EdgeInsets.only(left: 2.0),
        child: Text(
        'Выйти',textAlign: TextAlign.start, style: TextStyle(
          fontSize: 16,
          color: Color.fromRGBO(236, 58, 77, 1),
          
        ),
           ),
      )),
   ),
                        
                ]),
             ),
           ),
          
        
      ),
    );
  }
}
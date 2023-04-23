import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:secondtest/constants/paddings.dart';


class MyButton extends StatelessWidget {
  const MyButton({this.onPressed, required this.text, super.key});

  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
   return Container(
    width: 343,
    height: 64,
     child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: ApplicationPaddings.vertical,
        backgroundColor: Color.fromRGBO(2, 142, 63, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
      ),
      onPressed: onPressed, child: Text(
      text, style: TextStyle(
        fontSize: 16,
   
      ),
     )),
   );
}
}
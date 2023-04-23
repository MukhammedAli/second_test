import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyPasswordText extends StatefulWidget {
  
  final String label;


  MyPasswordText({required this.label});

  @override
  State<MyPasswordText> createState() => _MyPasswordTextState();

  
}

class _MyPasswordTextState extends State<MyPasswordText> {

  var _isObscured;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isObscured = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _isObscured,
      cursorColor: Color.fromRGBO(0, 0, 0, 1),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () { 
            setState(() {
              _isObscured = !_isObscured;
            });
          },
          icon: _isObscured ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
        ),
        fillColor: Color.fromRGBO(254, 254, 254, 1),
        filled: true,
        labelText: widget.label, 
        floatingLabelStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 1),),
        labelStyle: const TextStyle(
          color: Color.fromRGBO(195, 195, 195, 1)
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffD8D8D8)),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff828282)),
        )
      ), 
    
    );
  }
}
 
 

import 'package:flutter/material.dart';

class DefaultButtons extends StatelessWidget {
    DefaultButtons({
    Key? key,
    required this.width,
    required this.buttoncolor,
    required this.text,
  }) : super(key: key);

  final double width;
  final Color buttoncolor;
  final String text;

  @override
  Widget build(BuildContext context) {


    return     GestureDetector(
             child: Container(
              width: width,
              height: 60.0,
              decoration:   BoxDecoration(
                color: buttoncolor,
                
                borderRadius:   BorderRadius.circular(12.0),
              ),
              child:     Center(child:   Text( text,
               style:   const TextStyle(fontSize: 18.0, 
               color: Colors.white,fontWeight: FontWeight. w700),),),
                   ),
           );
    
  }
}

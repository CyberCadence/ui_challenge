// ignore_for_file: public_member_api_docs, sort_constructors_first
 
 

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

//reusbale  white container

class CurvedContainer extends StatelessWidget {

final Widget child;
  final double height;
  final double width;
  final Color color;
  const CurvedContainer({
    Key? key,
    required this.child,
    required this.height,
    required this.width,
    this.color=Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Colors.white),
      width: width,height: height,);
  }
}




class TapButton extends StatefulWidget {
  const TapButton({
    Key? key,
    required this.text,
  }) : super(key: key);
final String text;



  @override
  State<TapButton> createState() => _TapButtonState();
}
// tap button
class _TapButtonState extends State<TapButton> {



  
  // 1
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _hasBeenPressed = !_hasBeenPressed;
        });
      },
      child: Container(
        width: 90,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), border: Border.all(width: 0.5),
            color: _hasBeenPressed ? const Color(0XFF3d928d) : Colors.white60),
        child: Center(
          child: Text(
            widget.text,
            style:
                TextStyle(
                  fontWeight: FontWeight.bold,
                  color: _hasBeenPressed ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}


//Listtile card


class CardTile extends StatelessWidget {


  final IconData leadingIcon;
  final String titleText;
  final String subtitleText;
  
  const CardTile({
    Key? key,
    required this.leadingIcon,
    required this.titleText,
    required this.subtitleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1,
                  color: Colors.black54,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ListTile(
                leading: Icon(leadingIcon,color: Colors.yellow.shade400,),
                title:   Text(titleText,style: const TextStyle(color: Colors.grey,fontWeight: FontWeight.w200),),subtitle:  Text( subtitleText,style: const TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
              ),
            );
  }
}
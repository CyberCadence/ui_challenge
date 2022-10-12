
import 'package:flutter/material.dart';
import 'package:ui_challenge/views/ReusableWigetsbookingPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// final Rwidth=MediaQuery.of(context).size.width;
// final Rheight=MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        body:
         Container(
       width: double.maxFinite,
          decoration: const BoxDecoration(image: DecorationImage

         (image: AssetImage('assets/Images/wallp.jpg'),fit: BoxFit.cover)
         ),
           child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Column(
                  
                  
                  crossAxisAlignment: CrossAxisAlignment. start,
            children:  [const SizedBox(height: 40,),
                const Text(
                  'Find And Book',
                  style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),
                ),   const Text(
                  'A Great Experience ',
                  style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),
                )
              ,
              
              const SizedBox(height: 20,),
              const Text(
                  'Going forward after a pandemic',
                  style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w300),
                )  ,const Text(
                  'devastated the airline industry',
                  style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w300)),const SizedBox(height: 20,),
           
           
           DefaultButtons(width: 170, buttoncolor: Colors.green.shade400, text: 'Get Tickets'),
           
           ],
        ),
              )),
         ),
      ),
    );
  }
}

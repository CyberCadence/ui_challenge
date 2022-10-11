import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// final width=MediaQuery.of(context).size.width;
// final height=MediaQuery.of(context).size.height;

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
            children:  [SizedBox(height: 40,),
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
           GestureDetector(
             child: Container(
              width: 170,
              height: 60.0,
              decoration:   BoxDecoration(
                color: Colors.green.shade400,
                
                borderRadius:   BorderRadius.circular(12.0),
              ),
              child:   const Center(child:   Text('Get Tickets',
               style:   TextStyle(fontSize: 18.0, 
               color: Colors.white,fontWeight: FontWeight. w700),),),
                   ),
           ),],
        ),
              )),
         ),
      ),
    );
  }
}

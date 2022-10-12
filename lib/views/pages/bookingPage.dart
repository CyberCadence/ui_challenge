// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ui_challenge/views/constants.dart';

import '../ReusableWigetsbookingPage.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.grey,
        height: double.maxFinite,
        child: Stack(
          children: [
            Container(height: MediaQuery.of(context).size.height /
                  2.3, //stack widget to implement
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Images/wallp.jpg'),
                      fit: BoxFit.fitWidth)),child: Padding(
                        padding: const EdgeInsets.only(left: 35,right: 5,top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BigText(text: 'Lets Book Your', size: 25,textcolor: Colors.white,),    const CircleAvatar(radius: 30,
                              backgroundImage: AssetImage('assets/Images/eth.jpg'),)
                          ],
                        )
                     , BigText(text: 'Flight ✈︎', size: 25,textcolor: Colors.white,)],),
                      ),
            ),
        BottomWidget(),MiddleWidget()],
        ),
      )),
    );
  }
}

class MiddleWidget extends StatelessWidget {
  const MiddleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: 120,
            left: 35,
            child: Container(
              height: 260,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Constants.kheight5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TapButton(text: 'One Way',),  TapButton(text: 'Two Way',),  TapButton(text: 'Multi City',)
                      ],
                    ),
                 Constants.kheight10,
                 
                 const CardTile(leadingIcon: Icons.flight,subtitleText: 'London,NCD',titleText: 'From'),             
                 const CardTile(leadingIcon: Icons.flight,subtitleText: 'Bairstow,BSW',titleText: 'To'),           ],
                ),
              ),
            ));
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
     bottom: 2,  
     child: Container(width:MediaQuery.of(context).size.width,height:MediaQuery.of(context).size.height/1.8,
       color: Colors.grey.shade100,
       child: Padding(
         padding: const EdgeInsets.only(left: 10,top: 20),
         child: Column(children: [
        const SizedBox(height: 40,),
          Padding(
           padding: const EdgeInsets.only(left: 25),
           child: Row(children: [const Text('Sort By'),const SizedBox(width: 20,),

        Container(width: 90,height: 40,
        padding: const EdgeInsets.all(5),
         decoration: BoxDecoration(borderRadius: 
        BorderRadius.circular(25),color: Colors.white), child:   Row(
          children: const [
            Text('Highest Price ',style: TextStyle(fontSize: 10),),
         Text('↓',style: TextStyle(fontSize: 20),) ],
        )),
            const SizedBox(width: 10,)  ],),
         )
        ,Constants.kheight10,  
        Container(   decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
        color: Colors.white),width: 320,height: 340,child: Padding(padding: const EdgeInsets.all(15),
        child: Column(
         children: [
           
           Container(  padding: const EdgeInsets.all(15),
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
            
           color: Colors.cyanAccent),width:250 ,height: 200,child: Stack( 

            children: [
             Container(decoration:   BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               image: const DecorationImage(image: AssetImage('assets/Images/plane.png'))),)
             , Positioned(top: 5,left: 5,
               child: Container(  
                 width: 70,height: 22,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20,),
                 color: Colors.black),
                 child: const Center(child: Text('150',
                 style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),))),
             ),
            ],
          ),
          ), 
          Constants.kheight20,
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(text: 'Flight Yogyakarta',size:18 ),  Constants.kwidth5, BigText(text: 'JKB-JKM', size: 18,textcolor: Colors.grey,)
            ],
          ),
          Constants.kheight40,
          Row(
            children: [const Icon(Icons.alarm,color: Colors.grey,size: 15,),Constants.kwidth10,
              BigText(
         textcolor: Colors.grey,
         text: '10 AM', size: 15), 
         Constants.kwidth10,
         BigText(
         textcolor: Colors.grey,
         text: '12 PM', size: 15) ,const Spacer(), BigText(text: 'Book Now', size: 20,textcolor: Colors.orangeAccent,)
            ],
          )],),),)
        , ],),
       ),) );
  }
}

class BigText extends StatelessWidget {
  final String text;
  final double size;
  final Color textcolor;


  BigText({
    Key? key,
    required this.text,
    required this.size,
      this.textcolor=Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: size,color: textcolor),);
  }
}


  
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_challenge/views/constants.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(height: MediaQuery.of(context).size.height/2.3,
              width: double.maxFinite,
              decoration: BoxDecoration(
               
                image: DecorationImage(image: AssetImage('assets/Images/wallp.jpg'),fit: BoxFit. fitWidth)),
               
            ),
            
            Container(color: Colors.grey.shade300,width: double.maxFinite,height:MediaQuery.of(context).size.height/2,) // need to fix height of bottom container
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stud_eeze_app/presentation/custom/custom_logo.dart';

class Data extends StatefulWidget {
 
 static const String routeNamed = 'data';
  @override
   DataState createState() =>  DataState();
}

class  DataState extends State <Data> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            body: Container(
              padding: EdgeInsets.all(32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                                              child: CustomLogo(
                                                                url:'assets/student.jpg'

                                ),

                              ),

                               InkWell(
                                                                child: CustomLogo(
                                                                  url:'assets/teacher.png'
                                  
                              ),
                               ),

                            ],
                          ),
                        )


                    ],
                  ),
          
            ),
      ),
    );
  }
}
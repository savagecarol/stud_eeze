import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';
import 'package:stud_eeze_app/presentation/splashpage.dart';
void main() => runApp(StudEeze());

class StudEeze extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
            providers: [
 
      ],

          child: MaterialApp(
        title: "Stud Eeze",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        initialRoute: SplashPage.routeNamed,
        routes: {
           SplashPage.routeNamed: (BuildContext context) => SplashPage(),         
        },
      ),
    );
  }
}

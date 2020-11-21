import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';
import 'package:stud_eeze_app/presentation/auth.dart';
import 'package:stud_eeze_app/presentation/auth2.dart';
import 'package:stud_eeze_app/presentation/data.dart';
import 'package:stud_eeze_app/presentation/login_screen.dart';
import 'package:stud_eeze_app/presentation/splashpage.dart';
import 'package:stud_eeze_app/store/user_store.dart';
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
               Provider<UserStore>.value(value: UserStore()),
              
      ],
          child: MaterialApp(
        title: "Stud Eeze",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        initialRoute: Auth.routeNamed,
        routes: {
           Auth2.routeNamed: (BuildContext context) => Auth2(),  
           Data.routeNamed: (BuildContext context) => Data(), 
          Auth.routeNamed: (BuildContext context) => Auth(),  
           SplashPage.routeNamed: (BuildContext context) => SplashPage(),  
          LoginPage.routeNamed: (BuildContext context) => LoginPage(),           
        },
      ),
    );
  }
}

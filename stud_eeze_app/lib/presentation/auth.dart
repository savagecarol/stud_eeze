// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:stud_eeze_app/presentation/login_screen.dart';
// import 'package:stud_eeze_app/presentation/splashpage.dart';
// import 'package:stud_eeze_app/utils/global.dart';

// class Auth extends StatefulWidget {
//   static const String routeNamed = 'auth';
//   @override
//   _AuthState createState() => _AuthState();
// }

// class _AuthState extends State<Auth> {
//   FirebaseUser user;

//   @override
//   void initState() {
//     super.initState();
//     lol();
//   }

//   lol() async{
//      user = await firebaseAuthService.getCurrentuser();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(body: (user!=null) ? SplashPage() : LoginPage()));
//   }
// }



import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:stud_eeze_app/model/store_observer.dart';
import 'package:stud_eeze_app/presentation/custom/user_store.dart';
import 'package:stud_eeze_app/presentation/login_screen.dart';
import 'package:stud_eeze_app/presentation/splashpage.dart';

class Auth extends StatefulWidget {
  static const String routeNamed = 'auth';
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      check();
    });
  }

  check() async {
    await Provider.of<UserStore>(context).checking();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: StoreObserver<UserStore>(
        builder: (UserStore store, BuildContext context) {
      if (store.check) return Container(
        child: Center(
          child: CircularProgressIndicator(),
        ));
      return (store.isLoggedIn == true ? SplashPage() : LoginPage());
    })));
  }
}

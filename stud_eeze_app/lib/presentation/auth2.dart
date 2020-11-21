import 'package:flutter/material.dart';

import 'package:stud_eeze_app/presentation/data.dart';
import 'package:stud_eeze_app/presentation/splashpage.dart';
import 'package:stud_eeze_app/utils/global.dart';

class Auth2 extends StatefulWidget {
  static const String routeNamed = 'auth2';
  @override
  _Auth2State createState() => _Auth2State();
}

class _Auth2State extends State<Auth2> {
  @override
  void initState() {
    super.initState();
    check();
    getAllUser();
  }

  check() async {
    user = await firebaseAuthService.getData();
    if (user == null) {
      Navigator.pushNamed(context, Data.routeNamed);
    } else {
      Navigator.pushNamed(context, SplashPage.routeNamed);
    }
  }

  getAllUser() async {
    all = await firebaseAuthService.getAll();
    print(all);

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    )));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stud_eeze_app/model/store_observer.dart';
import 'package:stud_eeze_app/presentation/custom/custom_button.dart';
import 'package:stud_eeze_app/presentation/splashpage.dart';
import 'package:stud_eeze_app/store/user_store.dart';
import 'package:stud_eeze_app/utils/global.dart';

import 'auth2.dart';

class LoginPage extends StatefulWidget {
  static const String routeNamed = 'LoginPage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        height: defaultHeight, width: defaultWidth, allowFontScaling: false)
      ..init(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: ScreenUtil.instance.setHeight(ScreenUtil.instance.height),
          child: Padding(
              padding: const EdgeInsets.only(
                  top: 240, left: 32, right: 32, bottom: 64),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Center(
                    child: Container(
                      width: ScreenUtil.instance.setWidth(160),
                      height: ScreenUtil.instance.setHeight(180),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.purpleAccent.withOpacity(.5),
                                blurRadius: 3,
                                offset: Offset(0, 5))
                          ],
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage('assets/logo.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
  
                  Center(child: StoreObserver<UserStore>(
                      builder: (UserStore store, BuildContext context) {
                    return CustomButton(
                      labelText: 'Sign In With Gmail',
                      isLoading: store.isLoading,
                      postIcon: Icons.arrow_forward,
                      visiblepostIcon: true,
                      onTap: () async {
                        await store.logIn();
                        if (preferenceService.getUID() == null) {
                          showSnackbar("Error in login", context);
                        } else {
                          currentPage = 0;
                          Navigator.pushNamed(context, Auth2.routeNamed);
                        }
                      },
                    );
                  }))
                ],
              )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stud_eeze_app/model/store_observer.dart';
import 'package:stud_eeze_app/presentation/custom/custom_button.dart';
import 'package:stud_eeze_app/presentation/custom/custom_logo.dart';
import 'package:stud_eeze_app/presentation/custom/custom_textfield.dart';
import 'package:stud_eeze_app/presentation/splashpage.dart';
import 'package:stud_eeze_app/store/user_store.dart';
import 'package:stud_eeze_app/utils/global.dart';
import 'package:stud_eeze_app/utils/style.dart';

class Data extends StatefulWidget {
  static const String routeNamed = 'data';
  @override
  DataState createState() => DataState();
}

class DataState extends State<Data> {
  final GlobalKey<FormState> _signINFrom = GlobalKey<FormState>();
  String iname;
  String className;
  int k = 0;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        height: defaultHeight, width: defaultWidth, allowFontScaling: false)
      ..init(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 128, left: 32, right: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: (k == 1)
                              ? BoxDecoration(
                                  color: Styles.BACKAGROUND_COLOR,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Styles.CUSTOM_SHADOW_COLOR
                                            .withOpacity(.1),
                                        blurRadius: 3,
                                        offset: Offset(0, 5))
                                  ],
                                  borderRadius: BorderRadius.circular(16))
                              : BoxDecoration(),
                          padding: EdgeInsets.all(8),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                k = 1;
                              });
                            },
                            child: Column(
                              children: [
                                CustomLogo(
                                  url: 'assets/student.jpg',
                                ),
                                SizedBox(
                                  height: ScreenUtil.instance.setHeight(5),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Student',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: (k == 2)
                              ? BoxDecoration(
                                  color: Styles.BACKAGROUND_COLOR,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Styles.CUSTOM_SHADOW_COLOR
                                            .withOpacity(.1),
                                        blurRadius: 3,
                                        offset: Offset(0, 5))
                                  ],
                                  borderRadius: BorderRadius.circular(16),
                                )
                              : BoxDecoration(),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                k = 2;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomLogo(
                                  url: 'assets/teacher.png',
                                ),
                                SizedBox(
                                  height: ScreenUtil.instance.setHeight(10),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Teacher',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ScreenUtil.instance.setHeight(64)),
                  Form(
                    key: _signINFrom,
                    child: Column(children: [
                      CustomTextField(
                        size: false,
                        hintText: 'Class',
                        icon: Icons.location_on,
                        isPrefixIcon: false,
                        onSaved: (value) {
                          className = value;
                        },
                        validator: requiredString,
                      ),
                      CustomTextField(
                        size: false,
                        hintText: 'Institution Name',
                        icon: Icons.location_on,
                        isPrefixIcon: false,
                        onSaved: (value) {
                          iname = value;
                        },
                        validator: requiredString,
                      ),
                      SizedBox(height: ScreenUtil.instance.setHeight(64)),
                      StoreObserver<UserStore>(
                          builder: (UserStore store, BuildContext context) {
                        return CustomButton(
                          labelText: 'NEXT',
                          postIcon: Icons.arrow_forward,
                          visiblepostIcon: true,
                          isLoading: store.isData,
                          onTap: () async {
                            _signINFrom.currentState.save();
                            if (_signINFrom.currentState.validate()) {
                              try {
                                if (k != 0) {
                                  await store.addData(className, iname, k);
                                  print("fdgfdgfdgfdg");
                                  Navigator.pushNamed(
                                      context, SplashPage.routeNamed);
                                } else {
                                  showSnackbar(
                                      "Choose Student or Teacher", context);
                                }
                              } catch (e) {
                                print("signup error");
                                print(e);
                                showSnackbar(e.toString(), context);
                              }
                            }
                          },
                        );
                      }),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

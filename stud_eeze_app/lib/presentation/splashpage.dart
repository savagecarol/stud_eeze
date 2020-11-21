import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stud_eeze_app/presentation/tab_pages/homepage.dart';
import 'package:stud_eeze_app/presentation/tab_pages/info.dart';
import 'package:stud_eeze_app/presentation/tab_pages/post_page.dart';
import 'package:stud_eeze_app/presentation/tab_pages/profile_page.dart';
import 'package:stud_eeze_app/utils/global.dart';
import 'package:stud_eeze_app/utils/style.dart';

class SplashPage extends StatefulWidget {
  static const String routeNamed = 'SplashPage';
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  _getBody() {
    switch (currentPage) {
      case 0:
        return HomePage();
        break;
      case 1:
        return PostPage();
        break;
      case 2:
        return ProfilePage();
        break;
      case 3:
        return Info();
        break;
      default:
        return HomePage();
    }
  }

  _getBottomBar() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      margin: EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _getBottomBarItem(index: 0, icontab: Icons.home),
          _getBottomBarItem(
              index: 1,
              icontab: (user.role == 'stu') ? (Icons.note) : Icons.add),
          _getBottomBarItem(index: 2, icontab: Icons.person),
          _getBottomBarItem(index: 3, icontab: Icons.info),
        ],
      ),
    );
  }

  _getBottomBarItem({
    int index,
    IconData icontab,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentPage = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: ScreenUtil.instance.setHeight(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: currentPage == index
                    ? Styles.BACKAGROUND_COLOR
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Icon(
                  icontab,
                  color: currentPage == index ? Colors.white : Colors.black38,
                  size: ScreenUtil.instance.setHeight(32),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        height: defaultHeight, width: defaultWidth, allowFontScaling: false)
      ..init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[Expanded(child: _getBody()), _getBottomBar()],
        ),
        resizeToAvoidBottomPadding: false,
      ),
    );
  }
}

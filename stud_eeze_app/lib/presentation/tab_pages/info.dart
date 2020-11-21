import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stud_eeze_app/presentation/custom/custom_logo.dart';
import 'package:stud_eeze_app/utils/style.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(32),
                  ),
                
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
                   SizedBox(
                    height: ScreenUtil.instance.setHeight(32),
                  ),

                  SizedBox(
                    height: ScreenUtil.instance.setHeight(32),
                  ),
                   Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Project Objective',
                      style: TextStyle(
                          color: Styles.BLUE_GREY_COLOR,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(8),
                  ),
                  Container(
                    child: Text(
                      '📫 Enhanced communication,\n'
'📫 Improved organization,\n'
'📫 Sharing notes with non-class mems is prohibited,\n'
'📫 One-to-one doubt clarification sessions,\n'
'📫 Study materials(teacher can share docs),\n'
'📫 Interactive quizzes, and\n'
'📫 Excellent privacy features(google sign-in).\n',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                      textAlign: TextAlign.left,
                    ),
                  ),


                 
                 
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(32),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Meet Our Team',
                      style: TextStyle(
                          color: Styles.BLUE_GREY_COLOR,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(16),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [


                            CustomLogo(
                              url: 'assets/vishnu.jpg',
                            ),
                            SizedBox(
                              height: ScreenUtil.instance.setHeight(5),
                            ),
                            SizedBox(
                              height: ScreenUtil.instance.setHeight(5),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'VishnuVasan',
                                style: TextStyle(
                                    color: Styles.BLUE_GREY_COLOR,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              height: ScreenUtil.instance.setHeight(5),
                            ),
                            Container(
                              width: ScreenUtil.instance.setWidth(120),
                              child: Text(
                                'Web Developer',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomLogo(
                              url: 'assets/neha.jpg',
                            ),
                            SizedBox(
                              height: ScreenUtil.instance.setHeight(5),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Neha Anand',
                                style: TextStyle(
                                    color: Styles.BLUE_GREY_COLOR,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              height: ScreenUtil.instance.setHeight(5),
                            ),
                            Container(
                              width: ScreenUtil.instance.setWidth(120),
                              child: Text(
                                'Web Developer',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(16),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomLogo(
                              url: 'assets/jrao.jpg',
                            ),
                            SizedBox(
                              height: ScreenUtil.instance.setHeight(5),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'jayaShree Rao V',
                                style: TextStyle(
                                    color: Styles.BLUE_GREY_COLOR,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              height: ScreenUtil.instance.setHeight(5),
                            ),
                            Container(
                              width: ScreenUtil.instance.setWidth(120),
                              child: Text(
                                'Web Developer',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomLogo(
                              url: 'assets/k.jpg',
                            ),
                            SizedBox(
                              height: ScreenUtil.instance.setHeight(5),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Kartikeya Sharma',
                                style: TextStyle(
                                    color: Styles.BLUE_GREY_COLOR,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              height: ScreenUtil.instance.setHeight(5),
                            ),
                            Container(
                              width: ScreenUtil.instance.setWidth(120),
                              child: Text(
                                'App developer',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
 SizedBox(
                    height: ScreenUtil.instance.setHeight(32),
                  ),
                 
              SizedBox(
                    height: ScreenUtil.instance.setHeight(32),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Challanges We Ran into',
                      style: TextStyle(
                          color: Styles.BLUE_GREY_COLOR,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(8),
                  ),
                  Container(
                    child: Text(
                      'We have created a Stud Eeze app that can change the face of the education system. We plan to add more courses and improvise its features shortly.The first major problem we faced was to come up with an idea for the hackathon project. Initially, we planned for an environmental app that can control the environment and climate-related crimes. But due to time limit and its less functionality made us drop the idea. Finally, we decided to stick with the theme education and then came up with Stud Eeze app which can make video calls and provide privacy feature that protects app details and material shared by tutors.The problem we came across executing our plan included providing the video call feature. It was the first time we tried this, so it took a while to figure it out. Next big challenge was to disable the screenshot feature so that material provided by tutors is not shared by students to any other students who are not the part of the app. We had a hard time figuring that out.',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(32),
                  ),

                 
                 
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(32),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Features',
                      style: TextStyle(
                          color: Styles.BLUE_GREY_COLOR,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(8),
                  ),
                  Container(
                    child: Text(
                      '⚡ Seperate login portals for students and mentors\n⚡ Screen-shot disability\n⚡In-app video calling ability\n⚡ Secured reach of content\n',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(32),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Technology Stack',
                      style: TextStyle(
                          color: Styles.BLUE_GREY_COLOR,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(8),
                  ),
                  Container(
                    child: Text(
                      '1: Flutter for Application development.\n2: Html And Css for website.\n3: Firebase for database.\n4: JavaScript and Boostrap  for deesigning.\n4: Formspree  for sending mail.\n',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                      textAlign: TextAlign.left,
                    ),
                  ),
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

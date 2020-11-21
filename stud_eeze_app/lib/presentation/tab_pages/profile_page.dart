import 'package:flutter/material.dart';
import 'package:stud_eeze_app/presentation/custom/profile_card.dart';
import 'package:stud_eeze_app/utils/strings.dart';

class ProfilePage extends StatefulWidget {
  static const String routeNamed = 'ProfilePage';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // checking();
    });

  }

  // checking() async {
  //   print(preferenceService.getUID());
  //   if (preferenceService.getUID() != null) {
  //     await Provider.of<UserStore>(context).getData();
  //   }
  // }

  bool k = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: (k == true)
              ? SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 32, horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        // StoreObserver<UserStore>(
                        //     builder: (UserStore store, BuildContext context) {
                        //   if (store.isData == false) {
                        //     return Container(
                        //       child: Center(
                        //         child: CircularProgressIndicator(),
                        //       ),
                        //     );
                        //   }

                        //   return CustomProfileCard(
                        //     name: (store.loggedInUser.name == null)
                        //         ? ""
                        //         : store.loggedInUser.name,
                        //     number: (store.loggedInUser.contactNumber == null)
                        //         ? ""
                        //         : store.loggedInUser.contactNumber,
                        //     image: (store.loggedInUser.image == null)
                        //         ? StringValues.DEFAULT_USER_IMAGE
                        //         : store.loggedInUser.image,
                        //     onTap: () {
                        //       firebaseAuthService.signOut();
                        //       Navigator.pushNamed(context, Auth.routeNamed);
                        //     },
                        //   );
                        // }),

  CustomProfileCard(
  name:"kartik",
  image:StringValues.DEFAULT_USER_IMAGE,
  number:"dfdf" ,
  isLoading: true,
    )
                      


                      ],
                    ),
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stud_eeze_app/utils/style.dart';


class CustomButton extends StatelessWidget {
  final IconData postIcon;
  final bool visiblepostIcon;
  final String labelText;
  final FontWeight labelTextWeight;
  final double sizelabelText;
  final Function onTap;
  final double postIconSize;
  final Color postIconColor;
  final Color containerColor;
  final bool isLoading;
  CustomButton(
      {this.postIcon,
      this.labelText,
      this.visiblepostIcon = false,
      this.sizelabelText = 20,
      this.labelTextWeight = FontWeight.w500,
      this.onTap,
      this.isLoading = false,
      this.postIconSize = 24,
      this.postIconColor = Colors.black,
      this.containerColor = Styles.BACKAGROUND_COLOR});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: containerColor, boxShadow: [
          BoxShadow(
              color: Styles.CUSTOM_SHADOW_COLOR.withOpacity(.1),
              blurRadius: 3,
              offset: Offset(0, 5))
        ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: (isLoading==false)?Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(labelText,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: labelTextWeight)),
                Container(
                  child: (visiblepostIcon)
                      ? Icon(
                          postIcon,
                          size: postIconSize,
                          color: postIconColor,
                        )
                      : Container(),
                ),
              ],
            ):CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

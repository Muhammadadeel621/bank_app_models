import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/appbar_widget.dart';
import 'package:bank_app_clone/widgets/button_widget.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_form_field.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:bank_app_clone/widgets/text_widget_mod.dart';
import 'package:flutter/material.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({super.key});

  @override
  State<ChangePass> createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          Spacerr(spHeight: 25, spWidth: 0),
          AppbarWidget(
            textt: "Change Password",
          ),
          Spacerr(spHeight: 30, spWidth: 0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidgett(labelTitle: "Current Password"),
              ],
            ),
          ),
          CustomtextFormField(
            hinttextt: "........",
            textFieldIcon: Icon(
              Icons.lock_open_sharp,
              color: AppColors.homeMenu,
            ),
          ),
          Spacerr(spHeight: 25, spWidth: 0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidgett(labelTitle: "New Password"),
              ],
            ),
          ),
          CustomtextFormField(
            hinttextt: "........",
            textFieldIcon: Icon(
              Icons.lock_open_sharp,
              color: AppColors.homeMenu,
            ),
            textFieldIConn: Icon(
              Icons.remove_red_eye_outlined,
              color: AppColors.homeMenu,
            ),
          ),
          Spacerr(spHeight: 25, spWidth: 0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidgett(labelTitle: "Confirm New Password"),
              ],
            ),
          ),
          CustomtextFormField(
            hinttextt: "........",
            textFieldIcon: Icon(
              Icons.lock_open_sharp,
              color: AppColors.homeMenu,
            ),
          ),
          Spacerr(spHeight: 10, spWidth: 0),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidget(
                  textt: "Both Passwords Must Match",
                  textSize: 12,
                  textColor: AppColors.homeMenu,
                  fonttext: "assets/fonts/Poppins-Regular.ttf",
                ),
              ],
            ),
          ),
          Spacerr(
            spHeight: 30,
          ),
          ButtonWidget(
            textt: "Change Password",
          )
        ],
      ),
    );
  }
}

import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/appbar_widget.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_form_field.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:bank_app_clone/widgets/text_widget_mod.dart';

import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          const Spacerr(spHeight: 25, spWidth: 0),
          const AppbarWidget(textt: "Edit Profile"),
          const Spacerr(spHeight: 20, spWidth: 0),
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("assets/images/profile.webp"),
          ),
          const Spacerr(spHeight: 10, spWidth: 0),
          const TextWidget(
              textt: "Dennis Nzioki",
              textSize: 17,
              textColor: AppColors.textColor,
              fonttext: "assets/fonts/Poppins-Bold.ttf"),
          const Spacerr(spHeight: 5, spWidth: 0),
          const TextWidget(
              textt: "Senior Designer",
              textSize: 12,
              textColor: AppColors.homeMenu,
              fonttext: "assets/fonts/Poppins-Regular.ttf"),
          const Spacerr(spHeight: 20, spWidth: 0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidgett(labelTitle: "Full Name"),
              ],
            ),
          ),
          const CustomtextFormField(
            hinttextt: "Dennis Nzioki",
            textFieldIcon: Icon(
              Icons.mail_outline,
              color: AppColors.textColor,
            ),
          ),
          const Spacerr(spHeight: 20, spWidth: 0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidgett(labelTitle: "Phone Number"),
              ],
            ),
          ),
          const CustomtextFormField(
            hinttextt: "+923331234567",
            textFieldIcon: Icon(
              Icons.call,
              color: AppColors.textColor,
            ),
          ),
          const Spacerr(spHeight: 20, spWidth: 0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidgett(labelTitle: "Email Addresses"),
              ],
            ),
          ),
          const CustomtextFormField(
            hinttextt: "denisnzioki@gmail.com",
            textFieldIcon: Icon(
              Icons.mail_outline,
              color: AppColors.textColor,
            ),
          ),
          const Spacerr(spHeight: 15, spWidth: 0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextWidget(
                    textt: "Birth Date",
                    textSize: 14,
                    textColor: AppColors.homeMenu,
                    fonttext: "assets/fonts/Poppins-Regular.ttf"),
              ),
            ],
          ),
          const Spacerr(spHeight: 15, spWidth: 0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextWidget(
                  textt: "28",
                  textSize: 14,
                  textColor: AppColors.textColor,
                  fonttext: "assets/fonts/Poppins-Regular.ttf"),
              TextWidget(
                  textt: "September",
                  textSize: 14,
                  textColor: AppColors.textColor,
                  fonttext: "assets/fonts/Poppins-Regular.ttf"),
              TextWidget(
                  textt: "2000",
                  textSize: 14,
                  textColor: AppColors.textColor,
                  fonttext: "assets/fonts/Poppins-Regular.ttf"),
            ],
          ),
          const Spacerr(spHeight: 50),
          RichText(
            text: const TextSpan(
              text: 'Joined',
              style: TextStyle(color: AppColors.homeMenu, fontSize: 12),
              children: <TextSpan>[
                TextSpan(
                    text: ' 28 Jan 2021',
                    style: TextStyle(color: AppColors.homeTitle, fontSize: 13)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

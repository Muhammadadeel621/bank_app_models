import 'package:bank_app_clone/pages/bottom_navigation.dart';
import 'package:bank_app_clone/pages/sign_up_screen.dart';
import 'package:bank_app_clone/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/button_widget.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_form_field.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:bank_app_clone/widgets/text_widget_mod.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          const Spacerr(spHeight: 30),
          const AppbarWidget(homeIcon: Icons.arrow_back_ios_new),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidget(
                      textt: "Sign In",
                      textSize: 32,
                      textColor: AppColors.textColor,
                      fonttext: "assets/fonts/Poppins-Medium.ttf",
                    ),
                  ],
                ),
                const Spacerr(spHeight: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidgett(labelTitle: "Email Address"),
                  ],
                ),
                const CustomtextFormField(
                  hinttextt: "denisnzioki@gmail.com",
                  textFieldIcon: Icon(
                    Icons.mail_outline,
                    color: AppColors.textColor,
                  ),
                ),
                const Spacerr(spHeight: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidgett(labelTitle: "Password"),
                  ],
                ),
                CustomtextFormField(
                  hinttextt: "........",
                  textFieldIcon: const Icon(
                    Icons.lock_open_sharp,
                    color: AppColors.textColor,
                  ),
                  textFieldIConn: Icon(
                    obscureText
                        ? Icons.remove_red_eye_outlined
                        : Icons.remove_red_eye_rounded,
                    color: AppColors.textColor,
                  ),
                  obscureText: obscureText,
                ),
                const Spacerr(spHeight: 35),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavigation()));
                    // Handle sign-in functionality here
                  },
                  child: const ButtonWidget(textt: "Sign In"),
                ),
                const Spacerr(spHeight: 30, spWidth: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextWidget(
                      textt: "I'm a new user",
                      textSize: 14,
                      textColor: AppColors.sstext,
                      fonttext: "assets/fonts/Poppins-Regular.ttf",
                    ),
                    const Spacerr(spWidth: 5),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                        // Navigate to sign-up screen
                      },
                      child: const TextWidget(
                        textt: "Sign Up",
                        textSize: 14,
                        textColor: AppColors.ssstext,
                        fonttext: "assets/fonts/Poppins-Regular.ttf",
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/pages/login_screen.dart';
import 'package:bank_app_clone/widgets/appbar_widget.dart';
import 'package:bank_app_clone/widgets/button_widget.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_form_field.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:bank_app_clone/widgets/text_widget_mod.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          const Spacerr(spHeight: 30),
          const AppbarWidget(),
          // const Spacerr(spHeight: 20, spWidth: 0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidget(
                        textt: "Sign Up",
                        textSize: 32,
                        textColor: AppColors.textColor,
                        fonttext: "assets/fonts/Poppins-Medium.ttf"),
                  ],
                ),
                const Spacerr(spHeight: 10, spWidth: 0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidgett(labelTitle: "Full Name"),
                  ],
                ),
                const CustomtextFormField(
                  hinttextt: "Dennis Nzioki",
                  textFieldIcon: Icon(
                    Icons.mail_outline,
                    color: AppColors.textColor,
                  ),
                ),
                const Spacerr(spHeight: 10, spWidth: 0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidgett(labelTitle: "Phone Number"),
                  ],
                ),
                const CustomtextFormField(
                  hinttextt: "+923331234567",
                  textFieldIcon: Icon(
                    Icons.call,
                    color: AppColors.textColor,
                  ),
                ),
                const Spacerr(spHeight: 10, spWidth: 0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidgett(labelTitle: "Email Addresses"),
                  ],
                ),
                const CustomtextFormField(
                  hinttextt: "denisnzioki@gmail.com",
                  textFieldIcon: Icon(
                    Icons.mail_outline,
                    color: AppColors.textColor,
                  ),
                ),
                const Spacerr(spHeight: 10, spWidth: 0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidgett(labelTitle: "Password"),
                  ],
                ),
                const CustomtextFormField(
                  hinttextt: "........",
                  fontweightt: FontWeight.w900,
                  textFieldIcon: Icon(
                    Icons.lock_open_sharp,
                    color: AppColors.textColor,
                  ),
                  textFieldIConn: Icon(
                    Icons.remove_red_eye_outlined,
                    color: AppColors.textColor,
                  ),
                ),
                const Spacerr(spHeight: 25, spWidth: 0),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Container(
                          child: AlertDialog(
                            title: const Text(
                              "Sign Up Done",
                              style: TextStyle(
                                  fontSize: 14, color: AppColors.bgColor),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("OK"))
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: const ButtonWidget(
                    textt: "Sign Up",
                  ),
                ),
                const Spacerr(spHeight: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextWidget(
                        textt: "Already have an account.",
                        textSize: 14,
                        textColor: AppColors.sstext,
                        fonttext: "assets/fonts/Poppins-Regular.ttf"),
                    // Spacerr(spHeight: 0, spWidth: 7),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const loginScreen()));
                      },
                      child: const TextWidget(
                          textt: "Sign In",
                          textSize: 14,
                          textColor: AppColors.ssstext,
                          fonttext: "assets/fonts/Poppins-Regular.ttf"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

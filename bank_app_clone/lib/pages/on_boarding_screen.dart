import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/pages/login_screen.dart';
import 'package:bank_app_clone/widgets/on_boarding_widget.dart';
import 'package:flutter/material.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({super.key});

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        body: PageView.builder(
          itemCount: onBoardList.length,
          itemBuilder: (context, index) => onBordingWidget(
            index: index,
            buttonwidgett: const loginScreen(),
            img: onBoardList[index].img,
            textt: onBoardList[index].textt,
            textSize: 24,
            textColor: AppColors.textColor,
            fonttext: "assets/fonts/Poppins-SemiBold.ttf",
            sTextt: onBoardList[index].sTextt,
            sTextSize: 14,
            sFonttext: "assets/fonts/Poppins-Regular.ttf",
            sTextColor: AppColors.sTextColor,
          ),
        ));
  }
}

class onBoard {
  final String img, textt, sTextt;
  onBoard({required this.img, required this.textt, required this.sTextt});
}

final List onBoardList = [
  onBoard(
      img: "assets/images/onbaord1.png",
      textt: "Fastest Payment in the world",
      sTextt:
          "Integrate multiple payment methoods to help you up the process quickly"),
  onBoard(
      img: "assets/images/onboard2.png",
      textt: "The most Secoure Platfrom for Customer",
      sTextt:
          "Built-in Fingerprint, face recognition and more, keeping you completely safe"),
  onBoard(
      img: "assets/images/onbaord3.png",
      textt: "Paying for Everything is Easy and Convenient",
      sTextt:
          "Built-in Fingerprint, face recognition and more, keeping you completely safe")
];

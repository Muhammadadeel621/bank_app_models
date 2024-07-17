import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CardMenu extends StatelessWidget {
  const CardMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        height: 200,
        width: 340,
        decoration: BoxDecoration(
            color: AppColors.homeboxClr,
            // color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Spacerr(spHeight: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.card_travel,
                    color: AppColors.cardMenuSignal,
                  ),
                  Icon(
                    Icons.signal_cellular_alt,
                    color: AppColors.cardMenuSignal,
                  )
                ],
              ),
              Spacerr(spHeight: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      textt: "4562",
                      textSize: 24,
                      textColor: AppColors.textColor,
                      fonttext: "assets/fonts/Poppins-Bold.ttf"),
                  Spacerr(spWidth: 5),
                  TextWidget(
                      textt: "1122",
                      textSize: 24,
                      textColor: AppColors.textColor,
                      fonttext: "assets/fonts/Poppins-Bold.ttf"),
                  Spacerr(spWidth: 5),
                  TextWidget(
                      textt: "4595",
                      textSize: 24,
                      textColor: AppColors.textColor,
                      fonttext: "assets/fonts/Poppins-Bold.ttf"),
                  Spacerr(spWidth: 5),
                  TextWidget(
                      textt: "7852",
                      textSize: 24,
                      textColor: AppColors.textColor,
                      fonttext: "assets/fonts/Poppins-Bold.ttf"),
                ],
              ),
              Spacerr(spHeight: 10),
              Row(
                children: [
                  TextWidget(
                      textt: "AR Johnson",
                      textSize: 13,
                      textColor: AppColors.textColor,
                      fonttext: "assets/fonts/Poppins-Medium.ttf")
                ],
              ),
              Spacerr(spHeight: 20),
              Row(
                children: [
                  TextWidget(
                      textt: "Expiry Date",
                      textSize: 9,
                      textColor: AppColors.homeMenu,
                      fonttext: "assets/fonts/Poppins-Medium.ttf"),
                  Spacerr(spWidth: 53),
                  TextWidget(
                      textt: "CW",
                      textSize: 9,
                      textColor: AppColors.homeMenu,
                      fonttext: "assets/fonts/Poppins-Medium.ttf"),
                  Spacerr(spWidth: 120),
                  Image(image: AssetImage("assets/images/home-icon.png"))
                ],
              ),
              Spacerr(spHeight: 5),
              Row(
                children: [
                  TextWidget(
                      textt: "24/2000",
                      textSize: 13,
                      textColor: AppColors.textColor,
                      fonttext: "assets/fonts/Poppins-Bold.ttf"),
                  Spacerr(spWidth: 50),
                  TextWidget(
                      textt: "6986",
                      textSize: 13,
                      textColor: AppColors.textColor,
                      fonttext: "assets/fonts/Poppins-Bold.ttf"),
                  Spacerr(spWidth: 80),
                  TextWidget(
                      textt: "Mastercard",
                      textSize: 13,
                      textColor: AppColors.textColor,
                      fonttext: "assets/fonts/Poppins-Bold.ttf"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

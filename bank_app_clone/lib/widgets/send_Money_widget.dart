import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SendMoneyWidget extends StatelessWidget {
  const SendMoneyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 335,
      decoration: BoxDecoration(
          color: AppColors.homeCircleClr,
          borderRadius: BorderRadius.circular(20)),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: TextWidget(
                    textt: "Send to",
                    textSize: 14,
                    textColor: AppColors.textColor,
                    fonttext: "assets/fonts/Poppins-Regular.ttf"),
              ),
            ],
          ),
          Spacerr(spHeight: 15, spWidth: 0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/add.png"),
                ),
                Spacerr(spWidth: 20),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/person1.jfif"),
                ),
                Spacerr(spWidth: 20),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/person2.jfif"),
                ),
                Spacerr(spWidth: 20),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/person3.jfif"),
                ),
                Spacerr(spWidth: 20),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/person4.jfif"),
                ),
                Spacerr(spWidth: 20),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/person4.jfif"),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Spacerr(spWidth: 20),
                TextWidget(
                    textt: "Add",
                    textSize: 11,
                    textColor: AppColors.textColor,
                    fonttext: "assets/fonts/Poppins-Regular.ttf"),
                Spacerr(spWidth: 45),
                TextWidget(
                    textt: "Yemilet",
                    textSize: 11,
                    textColor: AppColors.textColor,
                    fonttext: "assets/fonts/Poppins-Regular.ttf"),
                Spacerr(spWidth: 40),
                TextWidget(
                    textt: "Alexa",
                    textSize: 11,
                    textColor: AppColors.textColor,
                    fonttext: "assets/fonts/Poppins-Regular.ttf"),
                Spacerr(spWidth: 45),
                TextWidget(
                    textt: "Yakub",
                    textSize: 11,
                    textColor: AppColors.textColor,
                    fonttext: "assets/fonts/Poppins-Regular.ttf"),
                Spacerr(spWidth: 40),
                TextWidget(
                    textt: "Krishna",
                    textSize: 11,
                    textColor: AppColors.textColor,
                    fonttext: "assets/fonts/Poppins-Regular.ttf"),
                Spacerr(spWidth: 40),
                TextWidget(
                    textt: "Aryan",
                    textSize: 11,
                    textColor: AppColors.textColor,
                    fonttext: "assets/fonts/Poppins-Regular.ttf"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

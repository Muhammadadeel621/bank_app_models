import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/appbar_widget.dart';
import 'package:bank_app_clone/widgets/button_widget.dart';
import 'package:bank_app_clone/widgets/card_menu.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AllCards extends StatefulWidget {
  const AllCards({super.key});

  @override
  State<AllCards> createState() => _AllCardsState();
}

class _AllCardsState extends State<AllCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          const Spacerr(spHeight: 25, spWidth: 0),
          const AppbarWidget(
            textt: "All Cards",
          ),
          const Spacerr(spHeight: 30, spWidth: 0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 2),
            child: CardMenu(),
          ),
          const Spacerr(spHeight: 20, spWidth: 0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 200,
              width: 340,
              decoration: BoxDecoration(
                  // color: AppColors.homeboxClr,
                  color: AppColors.allcardsbanner,
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage(
                                  "assets/images/allcard_banner.png"))
                          // Image(image: AssetImage("assets/images/sim-icon.png"))
                          // Image(image: AssetImage("assets/images/Chip.png")),
                          // Icon(Icons.signal_cellular_alt_sharp)
                        ],
                      ),
                    ),
                    Spacerr(spHeight: 10, spWidth: 0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextWidget(
                            textt: "4562",
                            textSize: 24,
                            textColor: AppColors.textColor,
                            fonttext: "assets/fonts/Poppins-Bold.ttf"),
                        Spacerr(spHeight: 0, spWidth: 5),
                        TextWidget(
                            textt: "1122",
                            textSize: 24,
                            textColor: AppColors.textColor,
                            fonttext: "assets/fonts/Poppins-Bold.ttf"),
                        Spacerr(spHeight: 0, spWidth: 5),
                        TextWidget(
                            textt: "4595",
                            textSize: 24,
                            textColor: AppColors.textColor,
                            fonttext: "assets/fonts/Poppins-Bold.ttf"),
                        Spacerr(spHeight: 0, spWidth: 5),
                        TextWidget(
                            textt: "7852",
                            textSize: 24,
                            textColor: AppColors.textColor,
                            fonttext: "assets/fonts/Poppins-Bold.ttf"),
                      ],
                    ),
                    Spacerr(spHeight: 10, spWidth: 0),
                    Row(
                      children: [
                        TextWidget(
                            textt: "AR Johnson",
                            textSize: 13,
                            textColor: AppColors.textColor,
                            fonttext: "assets/fonts/Poppins-Medium.ttf")
                      ],
                    ),
                    Spacerr(spHeight: 10, spWidth: 0),
                    Row(
                      children: [
                        TextWidget(
                            textt: "Expiry Date",
                            textSize: 9,
                            textColor: AppColors.homeExpdate,
                            fonttext: "assets/fonts/Poppins-Medium.ttf"),
                        Spacerr(spHeight: 0, spWidth: 60),
                        Spacerr(spHeight: 0, spWidth: 140),
                      ],
                    ),
                    Spacerr(spHeight: 10),
                    Row(
                      children: [
                        TextWidget(
                            textt: "24/2000",
                            textSize: 13,
                            textColor: AppColors.textColor,
                            fonttext: "assets/fonts/Poppins-Bold.ttf"),
                        Spacerr(spHeight: 0, spWidth: 50),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const Spacerr(spHeight: 80),
          const ButtonWidget(
            textt: "Add Card  +",
          )
        ],
      ),
    );
  }
}

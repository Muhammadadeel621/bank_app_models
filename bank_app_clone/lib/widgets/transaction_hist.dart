import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TransactionHist extends StatelessWidget {
  const TransactionHist(
      {super.key,
      required this.homeicoon,
      required this.textt,
      required this.textt1,
      required this.textt2});

  final IconData homeicoon;
  final String textt;
  final String textt1;
  final String textt2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Spacerr(spWidth: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                        textt: textt,
                        textSize: 16,
                        textColor: AppColors.textColor,
                        fonttext: "assets/fonts/Poppins-Medium.ttf"),
                    TextWidget(
                        textt: textt1,
                        textSize: 12,
                        textColor: AppColors.sTextColor,
                        fonttext: "assets/fonts/Poppins-Medium.ttf")
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextWidget(
                    textt: textt2,
                    textSize: 16,
                    textColor: AppColors.textColor,
                    fonttext: "assets/fonts/poppins-Medium.ttf"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

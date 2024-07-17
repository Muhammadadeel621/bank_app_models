import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/appbar_icon_widget.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/images/profile.webp")),
          Column(
            children: [
              TextWidget(
                  textt: "Welcome back,",
                  textSize: 12,
                  textColor: AppColors.sTextColor,
                  fonttext: "assets/fonts/Poppins-Regular.ttf"),
              TextWidget(
                  textt: "Dennis Nzioki",
                  textSize: 18,
                  textColor: AppColors.textColor,
                  fonttext: "assets/fonts/Poppins-Medium.ttf"),
            ],
          ),
          CircleHome(
            isBackIcon: false,
            homeIcon: Icons.search,
          ),
        ],
      ),
    );
  }
}

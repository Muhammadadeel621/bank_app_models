import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ProfileList extends StatefulWidget {
  const ProfileList({
    super.key,
    this.iconHome,
    this.iconTrail,
    required this.textt,
    this.navigationScreens,
  });

  final IconData? iconHome;
  final IconData? iconTrail;
  final Widget? navigationScreens;
  final String textt;

  @override
  State<ProfileList> createState() => _ProfileListState();
}

class _ProfileListState extends State<ProfileList> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        widget.iconHome,
        size: 20,
        color: AppColors.homeMenu,
      ),
      title: TextWidget(
          textt: widget.textt,
          textSize: 14,
          textColor: AppColors.textColor,
          fonttext: "assets/fonts/Poppins-Regular.ttf"),
      trailing: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => widget.navigationScreens!));
        },
        child: Icon(
          widget.iconTrail,
          size: 20,
          color: AppColors.homeMenu,
        ),
      ),
    );
  }
}

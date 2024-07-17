import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/pages/all_cards.dart';
import 'package:bank_app_clone/pages/category_page.dart';
import 'package:bank_app_clone/pages/edit_profile.dart';
import 'package:bank_app_clone/pages/new_card.dart';
import 'package:bank_app_clone/pages/send_money.dart';
import 'package:bank_app_clone/widgets/appbar_widget.dart';
import 'package:bank_app_clone/widgets/profile_list.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Column(
          children: [
            Spacerr(spHeight: 20),
            AppbarWidget(
                textt: "Profile Screen",
                hasOption: true,
                homeIcon: Icons.person),
            Spacerr(spHeight: 20),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage("assets/images/profile.webp"),
                      ),
                      Spacerr(spWidth: 20),
                      Column(
                        children: [
                          TextWidget(
                              textt: "Dennis Nzioki",
                              textSize: 17,
                              textColor: AppColors.textColor,
                              fonttext: "assets/fonts/Poppins-Bold.ttf"),
                          Spacerr(spHeight: 10, spWidth: 0),
                          TextWidget(
                              textt: "Senior Designer",
                              textSize: 12,
                              textColor: AppColors.homeMenu,
                              fonttext: "assets/fonts/Poppins-Regular.ttf"),
                        ],
                      )
                    ],
                  ),
                  Spacerr(spHeight: 10),
                  ProfileList(
                    textt: "Personal Information",
                    iconHome: Icons.person_add_alt_1,
                    iconTrail: Icons.arrow_forward_ios,
                    navigationScreens: EditProfile(),
                  ),
                  ProfileList(
                    textt: "Payment Preferences",
                    iconHome: Icons.payments_outlined,
                    iconTrail: Icons.arrow_forward_ios,
                    navigationScreens: NewCard(),
                  ),
                  ProfileList(
                    textt: "Banks and Cards",
                    iconHome: Icons.card_membership,
                    iconTrail: Icons.arrow_forward_ios,
                    navigationScreens: AllCards(),
                  ),
                  ProfileList(
                    textt: "Notifications",
                    iconHome: Icons.notifications_none_outlined,
                    iconTrail: Icons.arrow_forward_ios,
                    navigationScreens: ProfileScreen(),
                  ),
                  ProfileList(
                    textt: "manage Center",
                    iconHome: Icons.card_membership_sharp,
                    iconTrail: Icons.arrow_forward_ios,
                    navigationScreens: CategoryPage(),
                    // navigationScreens: CategoryPage(),
                  ),
                  ProfileList(
                    textt: "Address",
                    iconHome: Icons.location_on_outlined,
                    iconTrail: Icons.arrow_forward_ios,
                    navigationScreens: SendMoney(),
                  ),
                  ProfileList(
                    textt: "Settings",
                    iconHome: Icons.settings,
                    iconTrail: Icons.arrow_forward_ios,
                    navigationScreens: ProfileScreen(),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

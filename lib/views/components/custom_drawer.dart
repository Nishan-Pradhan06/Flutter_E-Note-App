import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import '../../providers/privacy_policy_provider.dart';
import '../study/study_hub_screen.dart';
import 'about_developer.dart';
import 'drawer/header.dart';
import 'drawer/menu.dart';

class CustomDrawerComponent extends StatelessWidget {
  const CustomDrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5.0,
      child: Container(
        color: const Color(0xffF8FCFC),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const CustomDrawerHeader(),
            const SizedBox(height: 8),
            MenuDrawer(
              icon: Icons.home_rounded,
              title: 'Home',
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            MenuDrawer(
              icon: Icons.school_outlined,
              title: 'Study Hub',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const StudyHubScreen(),
                  ),
                );
              },
            ),
            MenuDrawer(
              icon: Icons.share_rounded,
              title: 'Share',
              onTap: () {
                Share.share(
                  'https://play.google.com/store/apps/details?id=com.nishanpradhan.csnotes',
                );
              },
            ),
            MenuDrawer(
              icon: Icons.info_outline_rounded,
              title: 'About Developer',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DeveloperAboutScreen(),
                  ),
                );
              },
            ),
            MenuDrawer(
              icon: Icons.lock_outline_rounded,
              title: 'Privacy Policy',
              onTap: () {
                Provider.of<PrivacyPolicyProvider>(
                  context,
                  listen: false,
                ).showPrivacyDialog(context);
              },
            ),
            MenuDrawer(
              icon: Icons.exit_to_app_rounded,
              title: 'Exit',
              onTap: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/home/home_screen.dart';
import 'package:t_store/features/authentication/screens/live/live.dart';
import 'package:t_store/features/authentication/screens/profile/profile.dart';
import 'package:t_store/features/authentication/screens/social_feed/social_feed.dart';
import 'package:t_store/features/authentication/screens/wellness/wellness.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 55,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(
                  icon: Icon(FontAwesomeIcons.house), label: 'Home'),
              NavigationDestination(
                  icon: Icon(FontAwesomeIcons.dumbbell), label: 'Wellness'),
              NavigationDestination(
                  icon: Icon(FontAwesomeIcons.video), label: 'Live'),
              NavigationDestination(
                  icon: Icon(FontAwesomeIcons.solidNewspaper),
                  label: 'Social Feed'),
              NavigationDestination(
                  icon: Icon(FontAwesomeIcons.user), label: 'Profile'),
            ],
          ),
        ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    HomePage(),
    WellnessScreen(),
    FitnessApp(),
    ReelPage(),
    ProfilePage()
  ];
}

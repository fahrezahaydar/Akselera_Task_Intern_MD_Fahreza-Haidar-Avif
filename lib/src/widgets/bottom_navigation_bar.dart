import 'package:flutter/material.dart';

import '../core/app_assets.dart';
import '../core/app_colors.dart';
import '../core/app_ts.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedItemColor: AppColors.primary,
      backgroundColor: Colors.pink,
      unselectedItemColor: AppColors.darkGrey,
      selectedLabelStyle: AppTs.l1.copyWith(color: AppColors.primary),
      unselectedLabelStyle: AppTs.l1.copyWith(color: AppColors.darkGrey),
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(AppAssets.home),
          label: "Beranda",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AppAssets.ticket),
          label: "Pesanan",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AppAssets.discount),
          label: "Promo",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AppAssets.profile),
          label: "Akun",
        ),
      ],
    );
  }
}

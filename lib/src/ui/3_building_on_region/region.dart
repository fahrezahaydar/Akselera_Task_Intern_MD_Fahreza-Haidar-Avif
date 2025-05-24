import 'package:flutter/material.dart';

import '../../core/app_assets.dart';
import '../../core/app_colors.dart';
import '../../core/app_ts.dart';
import '../../widgets/appbar.dart';
import '../../widgets/building_card.dart';

class RegionScreen extends StatelessWidget {
  const RegionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var dummy = [
      [AppAssets.tower1, "Burz@ Tower"],
      [AppAssets.tower2, "Treasury Tower"],
    ];
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppAppbar(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_left_rounded,
              color: AppColors.blackText,
              weight: 0.5,
            ),
          ),
          Text("Medan", style: AppTs.h3.copyWith(color: AppColors.blackText)),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              AppAssets.help,
              height: 20,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 8 / 7,
        ),
        itemCount: 18,
        itemBuilder: (context, index) {
          return BuildingCard(
            onPressed: () {},
            img: dummy[index % 2][0],
            label: dummy[index % 2][1],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/app_assets.dart';
import '../../core/app_colors.dart';
import '../../core/app_routes.dart';
import '../../core/app_ts.dart';
import '../../widgets/appbar.dart';
import '../../widgets/building_card.dart';

class RegionScreen extends StatelessWidget {
  const RegionScreen({super.key, required this.regionName});
  final String regionName;

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
            onPressed: () {
              context.pop();
            },
            icon: Icon(
              Icons.chevron_left_rounded,
              color: AppColors.blackText,
              weight: 0.5,
            ),
          ),
          Text(
            regionName,
            style: AppTs.h3.copyWith(color: AppColors.blackText),
          ),
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
            onPressed: () => context.push(Routes.building(index)),
            img: dummy[index % 2][0],
            label: dummy[index % 2][1],
          );
        },
      ),
    );
  }
}

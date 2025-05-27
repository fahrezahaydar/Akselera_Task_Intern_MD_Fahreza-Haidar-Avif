import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/app_colors.dart';
import '../../../widgets/appbar.dart' show AppAppbar;

class BuildingHero extends StatelessWidget {
  const BuildingHero({super.key, required this.img});

  final String img;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: 112 / 125 * screenWidth,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(img), fit: BoxFit.fitWidth),
      ),
      child: SafeArea(
        child: AppAppbar(
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
          ],
        ),
      ),
    );
  }
}

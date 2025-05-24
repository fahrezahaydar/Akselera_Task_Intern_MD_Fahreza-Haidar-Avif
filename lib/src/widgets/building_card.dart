import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../core/app_ts.dart';

class BuildingCard extends StatelessWidget {
  const BuildingCard({
    super.key,
    required this.img,
    required this.label,
     this.width,
     this.height,
    required this.onPressed,
  });
  final String img;
  final String label;
  final double? width;
  final double? height;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashFactory: InkRipple.splashFactory,
      child: Container(
        width: width,
        height: height,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.fitWidth),
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 80,
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.black.withAlpha(160),
                AppColors.black.withAlpha(0),
              ],
              begin: Alignment.center,
              end: Alignment.topCenter,
            ),
          ),
          child: Text(label, style: AppTs.p2.copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}

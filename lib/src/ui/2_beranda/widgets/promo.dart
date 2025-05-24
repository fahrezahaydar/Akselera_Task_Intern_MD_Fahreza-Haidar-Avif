import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class PromoWidget extends StatelessWidget {
  const PromoWidget(
    this.img, {
    super.key,
    required this.width,
    required this.onPressed,
  });
  final double width;
  final String img;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 2),
              blurRadius: 8,
              color: AppColors.blackText.withAlpha(127),
            ),
          ],
        ),
        child: Image.asset(img, fit: BoxFit.fitWidth, width: width),
      ),
    );
  }
}

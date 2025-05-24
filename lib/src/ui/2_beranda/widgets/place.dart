import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_ts.dart';

class PlaceButton extends StatelessWidget {
  const PlaceButton({
    super.key,
    required this.widget,
    required this.label,
    required this.onPressed,
  });
  final Widget widget;
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashFactory: InkRipple.splashFactory,
      child: Column(
        spacing: 6,
        children: [widget, Text(label, style: AppTs.sh3)],
      ),
    );
  }

  factory PlaceButton.icon({
    required String icon,
    required String label,
    required void Function()? onPressed,
  }) {
    return PlaceButton(
      onPressed: onPressed,
      widget: Container(
        height: 64,
        width: 64,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.black,
        ),
        child: Center(child: Image.asset(icon)),
      ),
      label: label,
    );
  }

  factory PlaceButton.image({
    required String img,
    required String label,
    required void Function()? onPressed,
  }) {
    return PlaceButton(
      onPressed: onPressed,
      widget: ClipOval(
        child: Image.asset(
          img,
          width: 64,
          height: 64,
          fit: BoxFit.cover,
        ),
      ),
      label: label,
    );
  }
}

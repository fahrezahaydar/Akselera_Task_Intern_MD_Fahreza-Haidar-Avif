import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  final Widget child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      onPressed: onPressed,
      style: IconButton.styleFrom(
        maximumSize: Size.square(40),
        shape: CircleBorder(),
        side: BorderSide(color: AppColors.blackText, width: 0.5),
      ),
      icon: child,
    );
  }
}

import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.index, required this.length});
  final int index;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: List.generate(length, (i) {
        final bool isActive = i == index;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOut,
          width: isActive ? 24 : 8,
          height: 8,
          decoration: BoxDecoration(
            color:
                isActive ? AppColors.primary : AppColors.primary.withAlpha(77),
            borderRadius: BorderRadius.circular(100),
          ),
        );
      }),
    );
  }
}

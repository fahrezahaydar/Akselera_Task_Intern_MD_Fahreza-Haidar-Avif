import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class BouncingCirclesLoader extends StatefulWidget {
  const BouncingCirclesLoader({super.key});

  @override
  State<BouncingCirclesLoader> createState() => _BouncingCirclesLoaderState();
}

class _BouncingCirclesLoaderState extends State<BouncingCirclesLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final int numberOfCircles = 5;
  final double bounceHeight = 60.0;
  final Duration bounceDuration = Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    final totalDuration = bounceDuration * 2 * numberOfCircles;
    _controller = AnimationController(vsync: this, duration: totalDuration)
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double getBounceValue(int index, double progress) {
    final singleDuration = 2 * bounceDuration.inMilliseconds;
    final total = singleDuration * numberOfCircles;
    final currentTime = progress * total;

    final startTime = index * singleDuration;
    final endTime = startTime + singleDuration;

    if (currentTime < startTime || currentTime > endTime) return 0;

    final localTime = (currentTime - startTime) / singleDuration;

    if (localTime < 0.5) {
      return -bounceHeight * (localTime * 2);
    } else {
      return -bounceHeight * (1 - (localTime - 0.5) * 2);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        double progress = _controller.value;
        return Row(
          spacing: 12,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(numberOfCircles, (index) {
            final value = getBounceValue(index, progress);
            final isAtTop = value <= -1;
            final color = isAtTop
                ? AppColors.primary
                : AppColors.primary.withAlpha(51);

            return Transform.translate(
              offset: Offset(0, value),
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              ),
            );
          }),
        );
      },
    );
  }
}

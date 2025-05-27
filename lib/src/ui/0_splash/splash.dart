import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/app_assets.dart';
import '../../core/app_colors.dart';
import '../../core/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final circleSize = 920.0;
    final centerLeft = (screenSize.width - circleSize) / 2;
    final centerBottom = (screenSize.height - circleSize) / 2;
    return GestureDetector(
      onTap: () async {
        setState(() {
          animate = true;
        });
      },
      child: Scaffold(
        body: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              left: animate ? centerLeft : screenSize.width,
              bottom: animate ? centerBottom : -1110,
              onEnd: () {
                Future.delayed(Duration(seconds: 2));
                context.goNamed(Routes.onboarding);
              },
              child: Container(
                height: circleSize,
                width: circleSize,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SafeArea(
              child: Center(
                child: Image.asset(
                  AppAssets.logo,
                  height: 42,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

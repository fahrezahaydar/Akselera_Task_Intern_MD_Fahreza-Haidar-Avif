import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/app_colors.dart';
import '../../core/app_routes.dart';
import '../../core/app_ts.dart';
import '../../data/model/onboarding.dart';
import '../../data/repository/onboarding_repository.dart';
import '../../widgets/dot_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<Onboarding> listData = OnboardingRepository.list;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            if (index > 0) {
              setState(() => index--);
            }
          } else {
            if (index < listData.length - 1) {
              setState(() => index++);
            }
          }
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (child, animation) =>
              FadeTransition(opacity: animation, child: child),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(50),
                ),
                child: Image.asset(
                  listData[index].img,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height / 2 - 16,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    spacing: 16,
                    children: [
                      const Spacer(),
                      Text(
                        listData[index].title,
                        textAlign: TextAlign.center,
                        style: AppTs.h2.copyWith(color: AppColors.black),
                      ),
                      Text(
                        listData[index].subtitle,
                        textAlign: TextAlign.center,
                        style: AppTs.p1.copyWith(
                          color: AppColors.blackSoftText,
                        ),
                      ),
                      DotIndicator(index: index, length: listData.length),
                      const Spacer(),
                      FilledButton(
                        onPressed: () {
                          if (index < listData.length - 1) {
                            setState(() => index++);
                          } else {
                            context.goNamed(Routes.home);
                          }
                        },
                        child: Text(
                          index == listData.length - 1
                              ? "Mulai Sekarang"
                              : "Selanjutnya",
                          style: AppTs.sh1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
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
  List<Onboarding> get listData => OnboardingRepository.list;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingContent(
        index,
        data: listData[index],
        length: listData.length,
        onPressed: () {
          if (index == listData.length - 1) {
            context.goNamed(Routes.home);
          } else {
            setState(() {
              index++;
            });
            if (kDebugMode) {
              print(index);
            }
          }
        },
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  const OnboardingContent(
    this.index, {
    super.key,
    required this.data,
    required this.onPressed,
    required this.length,
  });
  final Onboarding data;
  final void Function()? onPressed;
  final int length;
  final int index;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
          child: Image.asset(
            data.img,
            fit: BoxFit.cover,
            height: 1 / 2 * screenHeight,
            width: screenWidth,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(24.0),
          constraints: BoxConstraints.tight(
            Size.fromHeight(1 / 2 * screenHeight),
          ),
          child: Column(
            children: [
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  Text(
                    data.title,
                    textAlign: TextAlign.center,
                    style: AppTs.h2.copyWith(color: AppColors.black),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    style: AppTs.p1.copyWith(color: AppColors.blackSoftText),
                    data.subtitle,
                  ),
                  DotIndicator(index: index, length: length),
                ],
              ),
              const Spacer(),
              FilledButton(
                onPressed: onPressed,
                style: FilledButton.styleFrom(
                  minimumSize: Size.fromHeight(56),
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.black,
                ),
                child: Text(
                  index == length - 1 ? "Mulai Sekarang" : "Selanjutnya",
                  style: AppTs.sh1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/app_assets.dart';
import '../../core/app_colors.dart';
import '../../core/app_routes.dart';
import '../../core/app_ts.dart';
import '../../data/repository/blog_repository.dart';
import '../../widgets/appbar.dart';
import '../../widgets/bottom_navigation_bar.dart';
import '../../widgets/building_card.dart';
import '../../widgets/dot_indicator.dart';
import '../../widgets/loader.dart';
import 'widgets/blog_card.dart';
import 'widgets/card.dart';
import 'widgets/place.dart';
import 'widgets/promo.dart';

part 'section/ads.dart';
part 'section/most_visited.dart';
part 'section/region_shortcut.dart';
part 'section/promo.dart';
part 'section/blog_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 2)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(body: Center(child: BouncingCirclesLoader()));
        }
        return Scaffold(
          bottomNavigationBar: const BottomNavBar(),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Image.asset(
                  AppAssets.barBg,
                  width: double.maxFinite,
                  fit: BoxFit.fitWidth,
                ),
                Column(
                  spacing: 10,
                  children: [
                    AppAppbar(
                      children: [
                        Image.asset(
                          AppAssets.logo,
                          height: 26,
                          fit: BoxFit.fitHeight,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            AppAssets.help,
                            height: 20,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ],
                    ),
                    const AdsSection(),
                    const RegionShorcutSection(),
                    const MostVisitedSection(),
                    const PromoSection(),
                    const BlogSection(),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

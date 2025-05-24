import 'package:flutter/material.dart';

import '../../core/app_assets.dart';
import '../../core/app_colors.dart';
import '../../core/app_ts.dart';
import '../../data/repository/blog_repository.dart';
import '../../widgets/appbar.dart';
import '../../widgets/dot_indicator.dart';
import 'widgets/blog.dart';
import 'widgets/card.dart';
import 'widgets/mostly_visited.dart';
import 'widgets/place.dart';
import 'widgets/promo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> loc = ["Medan", "Bandiung", "Bal,", "Jogja", "Jakarta"];
    final blogData = BlogRepository.dummyList;
    return _buildBg(
      context,
      children: [
        AppAppbar(children: [Image.asset(AppAssets.logo, height: 26, fit: BoxFit.fitHeight),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              AppAssets.help,
              height: 20,
              fit: BoxFit.fitHeight,
            ),
          ),],),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Column(
            spacing: 10,
            children: [
              Image.asset(AppAssets.ads),
              DotIndicator(index: 0, length: 3),
            ],
          ),
        ),
        _buildRegionShorcut(
          children: [
            PlaceButton.icon(
              icon: AppAssets.send,
              label: "Terdekat",
              onPressed: () {},
            ),
            for (int i = 0; i < loc.length; i++)
              PlaceButton.image(
                img: AppAssets.pik,
                label: loc[i],
                onPressed: () {},
              ),
          ],
        ),
        CommonCard(
          title: "Paling Sering Dikunjungi",
          subtitle: "Maksimalkan Bisnis Anda bersama Union Space",
          child: LayoutBuilder(
            builder: (context, constrait) {
              final cardWidth = (constrait.maxWidth - 12) / 2;
              return SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    MostlyVisited(
                      img: AppAssets.tower1,
                      label: "Burz@ Tower",
                      width: cardWidth,
                    ),
                    MostlyVisited(
                      img: AppAssets.tower2,
                      label: "Menara Batavia",
                      width: cardWidth,
                    ),
                    MostlyVisited(
                      img: AppAssets.tower1,
                      label: "Treasury Tower",
                      width: cardWidth,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        CommonCard(
          title: "Promo",
          subtitle: "Kemudahan Dengan Promo",
          trailing: TextButton(
            onPressed: () {},
            child: Text(
              "Lihat Semua",
              style: AppTs.h6.copyWith(color: AppColors.primary),
            ),
          ),
          child: LayoutBuilder(
            builder: (context, constrait) {
              return SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 12,
                  children: [
                    for (int i = 0; i < 3; i++)
                      PromoWidget(
                        AppAssets.promo,
                        onPressed: () {},
                        width: constrait.maxWidth,
                      ),
                  ],
                ),
              );
            },
          ),
        ),
        CommonCard(
          title: "Artikel",
          subtitle: "Kemudahan Dengan Promo",
          trailing: TextButton(
            onPressed: () {},
            child: Text(
              "Lihat Semua",
              style: AppTs.h6.copyWith(color: AppColors.primary),
            ),
          ),
          child: LayoutBuilder(
            builder: (context, constrait) {
              final cardWidth = (constrait.maxWidth - 18) * 2 / 3;
              return SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 12,
                  children: [
                    for (int i = 0; i < 3; i++)
                      BlogWidget(
                        blogData[i],
                        onPressed: () {},
                        width: cardWidth,
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildBg(
    BuildContext context, {
    List<Widget> children = const <Widget>[],
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.barBg,
            width: screenWidth,
            fit: BoxFit.fitWidth,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(spacing: 10, children: children),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: AppColors.primary,
        backgroundColor: Colors.pink,
        unselectedItemColor: AppColors.darkGrey,
        selectedLabelStyle: AppTs.l1.copyWith(color: AppColors.primary),
        unselectedLabelStyle: AppTs.l1.copyWith(color: AppColors.darkGrey),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.ticket),
            label: "Pesanan",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.discount),
            label: "Promo",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.profile),
            label: "Akun",
          ),
        ],
      ),
    );
  }

  Widget _buildRegionShorcut({List<Widget> children = const <Widget>[]}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      color: Colors.white,
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        child: Row(spacing: 12, children: children),
      ),
    );
  }
}

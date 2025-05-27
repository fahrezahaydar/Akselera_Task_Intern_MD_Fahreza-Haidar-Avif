import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_ts.dart';
import '../../data/model/building_model.dart';
import 'section/details_section.dart';
import 'section/header_section.dart';
import 'section/hero.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.id});
  final int id;

  Future<BuildingModel> fetchBuildingById() async {
    final listData = BuildingModel.dummydata;
    var data = listData.firstWhere((e) => e.id == id);
    await Future.delayed(const Duration(milliseconds: 500));
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchBuildingById(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (snapshot.hasError) {
          return Scaffold(
            body: Center(child: Text("Error: ${snapshot.error}")),
          );
        }

        final data = snapshot.data!;

        return Scaffold(
          backgroundColor: AppColors.background,
          body: ListView(
            children: [
              BuildingHero(img: data.pic),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  spacing: 10,
                  children: [
                    HeaderSection(data: data),
                    Divider(color: Color(0x4DBFBFBF)),
                    DetailsSection(data: data),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(24),
                color: Colors.white,
                child: FilledButton(
                  onPressed: () {},
                  child: Text("Pesan Sekarang", style: AppTs.sh1),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

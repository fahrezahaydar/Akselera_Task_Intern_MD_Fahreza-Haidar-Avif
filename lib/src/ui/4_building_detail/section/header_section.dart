import 'package:flutter/material.dart';

import '../../../core/app_assets.dart';
import '../../../core/app_colors.dart';
import '../../../core/app_ts.dart';
import '../../../data/model/building_model.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.data});

  final BuildingModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        ListTile(
          title: Text(
            data.name,
            style: AppTs.h3.copyWith(color: AppColors.blackText),
          ),
          subtitle: Row(
            spacing: 4,
            children: [
              Icon(Icons.location_on_outlined, size: 12, color: AppColors.blue),
              Text(
                data.location,
                style: AppTs.p3.copyWith(color: AppColors.blue),
              ),
            ],
          ),
          contentPadding: EdgeInsets.zero,
          horizontalTitleGap: 0,
          minTileHeight: 48,
          minVerticalPadding: 0,
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton.filled(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: const Color(0xFFEFEFEF),
                ),
                icon: const Icon(
                  Icons.bookmark_add_outlined,
                  color: Color(0xFF757575),
                ),
              ),
              IconButton.filled(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: const Color(0xFFEFEFEF),
                ),
                icon: Image.asset(AppAssets.sendOutlined, height: 24),
              ),
            ],
          ),
        ),
        Row(
          spacing: 8,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Color(0xFFF1F1F1)),
              ),
              child: Row(
                spacing: 4,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.deepOrangeAccent, size: 12),
                  Text("${data.rating}", style: AppTs.h6),
                ],
              ),
            ),
            Text(
              "${data.commentCountFormatted} Ulasan",
              style: AppTs.p3.copyWith(color: AppColors.blackSoftText),
            ),
          ],
        ),
        Row(
          spacing: 16,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(12, 6, 12, 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0x2212A427),
                border: Border.all(color: Color(0xFF12A427)),
              ),
              child: Text(
                data.isAvailable ? "Available" : "Not Available",
                style: AppTs.h6.copyWith(color: Color(0xFF12A427)),
              ),
            ),
            Row(
              spacing: 4,
              children: [
                Icon(Icons.add_road, color: AppColors.black),
                Text("1.4 Km", style: AppTs.sh3),
              ],
            ),
            Row(
              spacing: 4,

              children: [
                Icon(Icons.access_time, color: AppColors.black),
                Text("${data.traveltime} mins", style: AppTs.sh3),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

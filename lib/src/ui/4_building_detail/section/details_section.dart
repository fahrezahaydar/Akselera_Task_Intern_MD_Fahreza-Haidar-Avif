import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_ts.dart';
import '../../../data/model/building_model.dart';
import '../../../widgets/expandable_text.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key, required this.data});

  final BuildingModel data;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Text("Tentang Ruangan", style: AppTs.h5),
            ExpandableText(data.details, trimLength: 90),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0x4DBFBFBF)),
          ),
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Parkir",
                    style: AppTs.p2.copyWith(color: AppColors.blackText),
                  ),
                  Text(
                    data.park,
                    style: AppTs.p2.copyWith(color: Color(0xB3757575)),
                  ),
                ],
              ),
              Divider(color: Color(0x4DBFBFBF)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Biaya",
                    style: AppTs.p2.copyWith(color: AppColors.blackText),
                  ),
                  Text(
                    data.booking,
                    style: AppTs.p2.copyWith(color: Color(0xB3757575)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Text("Gambar Ruangan", style: AppTs.h5),
            Row(
              spacing: 8,
              children: List.generate(4, (i) {
                final plus = i == 3 && data.room.length > 4;
                return Expanded(
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(data.room[i]),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      plus ? "+${data.room.length - 4}" : "",
                      style: AppTs.h6.copyWith(color: Colors.white),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Text("Lokasi", style: AppTs.h5),
            Container(
              height: 200,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xFFDDE5E9)),
              ),
              child: FlutterMap(
                options: MapOptions(
                  initialCenter: LatLng(-7.77, 110.376),
                  initialZoom: 15,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.example.myapp',
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../core/app_ts.dart';

class CommonCard extends StatelessWidget {
  const CommonCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.trailing,
    required this.child,
  });
  final String title;
  final String subtitle;
  final Widget? trailing;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        spacing: 18,
        children: [
          ListTile(
            title: Text(title, style: AppTs.h5),
            subtitle: Text(subtitle, style: AppTs.p2),
            trailing: trailing,
            contentPadding: EdgeInsets.zero,
            minVerticalPadding: 0,
            minTileHeight: 40,
          ),
          child,
        ],
      ),
    );
  }
}

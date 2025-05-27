import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_ts.dart';
import '../../../data/model/blog.dart';

class BlogWidget extends StatelessWidget {
  const BlogWidget(
    this.data, {
    super.key,
    required this.width,
    required this.onPressed,
  });

  final BlogModel data;
  final double width;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashFactory: InkRipple.splashFactory,
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 2),
              blurRadius: 8,
              color: AppColors.blackText.withAlpha(127),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(data.img, fit: BoxFit.fitWidth, width: width),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                spacing: 12,
                children: [
                  SizedBox(
                    height: 32,
                    child: Text(
                      data.title,
                      style: AppTs.h6.copyWith(fontSize: 12),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    data.dateToString,
                    style: AppTs.l1.copyWith(color: AppColors.darkGrey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

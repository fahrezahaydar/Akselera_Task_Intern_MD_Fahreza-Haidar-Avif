import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_ts.dart';
import '../../widgets/appbar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: 9 / 10 * screenWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(""),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: SafeArea(child: AppAppbar()),
          ),
          Column(
            spacing: 10,
            children: [
              ListTile(
                title: Text(""),
                subtitle: Text(""),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton.filled(onPressed: (){}, icon: Icon(Icons.bookmark_add_outlined,)),
                    IconButton.filled(onPressed: (){}, icon: Image.asset(""))
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(24),
            color: Colors.white,
            child: FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                minimumSize: Size.fromHeight(56),
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.black,
              ),
              child: Text("Pesan Sekarang", style: AppTs.sh1),
            ),
          ),
        ],
      ),
    );
  }
}

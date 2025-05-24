import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/core/app_colors.dart';
import 'src/core/app_routes.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Union Space',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            maximumSize: Size.square(40),
            backgroundColor: Colors.transparent,
            shape: CircleBorder(),
            side: BorderSide(color: AppColors.blackText, width: 0.5),
          ),
        ),
      ),
      routerConfig: router,
    );
  }
}

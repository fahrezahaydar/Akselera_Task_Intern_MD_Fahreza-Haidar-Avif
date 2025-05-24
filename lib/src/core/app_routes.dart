import 'package:go_router/go_router.dart';

import '../ui/1_onboarding/onboarding.dart';
import '../ui/2_beranda/home.dart';
import '../ui/3_building_on_region/region.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: Routes.byRegion,
  routes: [
    GoRoute(
      name: Routes.onboarding,
      path: Routes.onboarding,
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(
      name: Routes.home,
      path: Routes.home,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      name: Routes.byRegion,
      path: Routes.byRegion,
      builder: (context, state) => RegionScreen(),
    ),
    GoRoute(
      name: Routes.building,
      path: Routes.building,
      builder: (context, state) => BuildingScreen(),
    ),
  ],
);

class Routes {
  static String onboarding = '/onboarding';
  static String home = "/home";
  static String byRegion = "/region";
  static String building = "/building";
}

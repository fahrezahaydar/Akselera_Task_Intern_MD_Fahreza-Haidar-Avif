import 'package:go_router/go_router.dart';

import '../ui/1_onboarding/onboarding.dart';
import '../ui/2_beranda/home.dart';
import '../ui/3_building_on_region/region.dart';
import '../ui/4_building_detail/building_detail_screen.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: Routes.onboarding,
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
      name: "${Routes.regionBase}/:name",
      path: '${Routes.regionBase}/:name',
      builder: (context, state) {
        final regionName = state.pathParameters['name'] ?? 'Unknown';
        return RegionScreen(regionName: regionName);
      },
    ),
    GoRoute(
      name: "${Routes.buildingBase}/:id",
      path: "${Routes.buildingBase}/:id",
      builder: (context, state) {
        final idParam = state.pathParameters['id'] ?? "0";
        final id = int.tryParse(idParam) ?? 0;
        return DetailScreen(id: id);
      },
    ),
  ],
);

class Routes {
  static String onboarding = '/onboarding';
  static String home = "/home";
  static String regionBase = "/region";
  static String buildingBase = "/building";

  static String byRegionWith(String name) => "$regionBase/$name";
  static String building(int id) => "$buildingBase/$id";
}

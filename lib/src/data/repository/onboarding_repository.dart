import '../../core/app_assets.dart';
import '../model/onboarding.dart';

class OnboardingRepository {
  OnboardingRepository._();
  static List<Onboarding> list = [
    Onboarding(
      title: "Terhubung. Berkembang. Bersama",
      subtitle:
          "Mewakili semangat kolaborasi dan pertumbuhan komunitas profesional \ndi Indonesia.",
      img: AppAssets.onboarding1,
    ),
    Onboarding(
      title: "Ruangmu. Gayamu. Bisnismu.",
      subtitle:
          "Menekankan fleksibilitas dan personalisasi yang ditawarkan oleh \nUnionSpace.",
      img: AppAssets.onboarding2,
    ),
    Onboarding(
      title: "Mulai Hari Produktifmu Sekarang!",
      subtitle:
          "Pendek, positif, dan langsung mengajak pengguna untuk mulai beraktivitas. Daftar dan Jelajahi Space Sekarang!",
      img: AppAssets.onboarding3,
    ),
  ];
}

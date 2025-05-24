import '../../core/app_assets.dart';
import '../model/blog.dart';

class BlogRepository {
  BlogRepository._();
  static List<BlogModel> dummyList = [
    BlogModel(
      title: "Tips Terbaik Sewa Ruang Kantor",
      date: DateTime(2023, 12, 22, 6, 55, 0, 0, 0),
      img: AppAssets.blog1,
    ),
    BlogModel(
      title: "Seputar Bisnis Tahun 2025",
      date: DateTime(2023, 12, 22, 6, 55, 0, 0, 0),
      img: AppAssets.blog2,
    ),
    BlogModel(
      title: "Tips Terbaik Sewa Ruang Kantor",
      date: DateTime(2023, 12, 22, 6, 55, 0, 0, 0),
      img: AppAssets.blog1,
    ),
  ];
}

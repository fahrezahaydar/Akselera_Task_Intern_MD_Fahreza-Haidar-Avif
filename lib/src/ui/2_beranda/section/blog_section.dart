part of '../home.dart';

class BlogSection extends StatelessWidget {
  const BlogSection({super.key});

  @override
  Widget build(BuildContext context) {
    final blogData = BlogRepository.dummyList;
    return CommonCard(
      title: "Artikel",
      subtitle: "Kemudahan Dengan Promo",
      trailing: GestureDetector(
        onTap: () {},
        child: Text(
          "Lihat Semua",
          style: AppTs.h6.copyWith(color: AppColors.primary),
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constrait) {
          final cardWidth = (constrait.maxWidth - 18) * 2 / 3;
          return SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 12,
              children: [
                for (int i = 0; i < 3; i++)
                  BlogWidget(blogData[i], onPressed: () {}, width: cardWidth),
              ],
            ),
          );
        },
      ),
    );
  }
}

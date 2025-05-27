part of '../home.dart';

class PromoSection extends StatelessWidget {
  const PromoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonCard(
      title: "Promo",
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
          return SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 12,
              children: [
                for (int i = 0; i < 3; i++)
                  PromoWidget(
                    AppAssets.promo,
                    onPressed: () {},
                    width: constrait.maxWidth,
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

part of '../home.dart';

class MostVisitedSection extends StatelessWidget {
  const MostVisitedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonCard(
      title: "Paling Sering Dikunjungi",
      subtitle: "Maksimalkan Bisnis Anda bersama Union Space",
      child: LayoutBuilder(
        builder: (context, constrait) {
          final cardWidth = (constrait.maxWidth - 12) / 2;
          return SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: [
                BuildingCard(
                  img: AppAssets.tower1,
                  label: "Burz@ Tower",
                  width: cardWidth,
                  height: cardWidth - 16,
                  onPressed: () {},
                ),
                BuildingCard(
                  img: AppAssets.tower2,
                  label: "Menara Batavia",
                  width: cardWidth,
                  height: cardWidth - 16,
                  onPressed: () {},
                ),
                BuildingCard(
                  img: AppAssets.tower1,
                  label: "Treasury Tower",
                  width: cardWidth,
                  height: cardWidth - 16,
                  onPressed: () {},
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

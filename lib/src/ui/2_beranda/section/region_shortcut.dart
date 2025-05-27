part of '../home.dart';

class RegionShorcutSection extends StatelessWidget {
  const RegionShorcutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> loc = ["Medan", "Bandung", "Bali", "Jogja", "Jakarta"];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      color: Colors.white,
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 12,
          children: [
            PlaceButton.icon(
              icon: AppAssets.send,
              label: "Terdekat",
              onPressed: () {},
            ),
            for (int i = 0; i < loc.length; i++)
              PlaceButton.image(
                img: AppAssets.pik,
                label: loc[i],
                onPressed: () {
                  context.push(Routes.byRegionWith(loc[i]));
                },
              ),
          ],
        ),
      ),
    );
  }
}

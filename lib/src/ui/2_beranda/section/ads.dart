part of '../home.dart';

class AdsSection extends StatelessWidget {
  const AdsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      child: Column(
        spacing: 10,
        children: [
          Image.asset(AppAssets.ads),
          DotIndicator(index: 0, length: 3),
        ],
      ),
    );
  }
}

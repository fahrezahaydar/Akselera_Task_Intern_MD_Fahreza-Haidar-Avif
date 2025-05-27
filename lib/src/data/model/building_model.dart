import '../../core/app_assets.dart';

class BuildingModel {
  final int id;
  final String name;
  final String location;
  final bool isBookmarked;
  final double rating;
  final int commentcount;
  final bool isAvailable;
  final double distance;
  final int traveltime;
  final String details;
  final String park;
  final String booking;
  final List<String> room;
  final String pic;
  final double lat;
  final double long;

  const BuildingModel({
    required this.id,
    required this.name,
    required this.location,
    this.isBookmarked = false,
    required this.rating,
    required this.commentcount,
    this.isAvailable = true,
    required this.distance,
    required this.traveltime,
    required this.details,
    required this.park,
    required this.booking,
    this.room = const [],
    required this.pic,
    required this.lat,
    required this.long,
  });

  static List<BuildingModel> get dummydata {
    var dummy = [
      [AppAssets.tower1, "Burz@ Tower"],
      [AppAssets.tower2, "Treasury Tower"],
    ];
    var room = [
      AppAssets.room1,
      AppAssets.room4,
      AppAssets.room3,
      AppAssets.room2,
    ];
    return List.generate(18, (index) {
      return BuildingModel(
        id: index,
        name: dummy[index % 2][1],
        location: 'Jl. Jend Sudirman - No.${25 + index * 4} Medan',
        rating: 4.0 + (index % 5) * 0.2,
        commentcount: 10000 + index * 1000,
        distance: 1400 + index * 2,
        traveltime: 7 + index * 2,
        details:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.',
        park: 'Gratis',
        booking: 'Pemesanan Online',
        lat: -6.2 + index * 0.01,
        long: 106.8 + index * 0.01,
        pic: dummy[index % 2][0],
        room: List.generate(8, (index1) {
          return room[(index + index1) % 4];
        }),
      );
    });
  }

  String get commentCountFormatted {
    if (commentcount >= 1000000) {
      return '${(commentcount / 1000000).toStringAsFixed(1)}M';
    } else if (commentcount >= 1000) {
      return '${(commentcount / 1000).toStringAsFixed(1)}k';
    } else {
      return commentcount.toString();
    }
  }
}

import 'package:intl/intl.dart';

class BlogModel {
  final String title;
  final DateTime date;
  final String img;

  BlogModel({required this.title, required this.date, required this.img});

  String get dateToString {
    return DateFormat('d MMM yyyy h:mm a').format(date);
  }
}

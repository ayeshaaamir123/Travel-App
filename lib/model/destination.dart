import 'package:travel_app/model/packages.dart';

class Destination {
  final String name;
  final String country;
  final String description;
  final List<Packages> packages;
  final String image;

  Destination(
      {required this.name,
      required this.country,
      required this.description,
      required this.packages,
      required this.image});
}

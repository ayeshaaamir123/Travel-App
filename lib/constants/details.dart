import 'package:travel_app/model/destination.dart';
import 'package:travel_app/model/packages.dart';

final List<Packages> packagesList = [
  Packages(
      packageName: 'Hunza & Skardu',
      price: 34000.0,
      destinations: ['Hunza', 'Skardu'],
      rating: 3.9,
      image: 'images/hunza.jpg'),
];

final List<Destination> destinationList = [
  Destination(
      name: 'Hunza',
      image: 'images/hunza.jpg',
      country: 'Pakistan',
      description:
          'The Hunza Valley is a mountainous valley in the northern part of the Gilgit-Baltistan region of Pakistan',
      packages: packagesList),
  Destination(
      name: 'Malam Jabba',
      image: 'images/malam-jabba.jpg',
      country: 'Pakistan',
      description:
          'Malam Jabba ski resort is a ski resort situated in the Hindu Kush range of the Swat Valley',
      packages: packagesList),
  Destination(
      name: 'Naran Kaghan',
      image: 'images/naran-kaghan.jpg',
      country: 'Pakistan',
      description:
          'Naran is a town and popular tourist destination in upper Kaghan Valley in Mansehra District',
      packages: packagesList),
  Destination(
      name: 'Skardu',
      image: 'images/skardu.jpg',
      country: 'Pakistan',
      description: 'Skardu is a city located in Gilgit Baltistan',
      packages: packagesList),
];

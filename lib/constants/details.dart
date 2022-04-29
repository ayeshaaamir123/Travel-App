import 'package:travel_app/model/destination.dart';
import 'package:travel_app/model/packages.dart';

final List<Packages> packagesList = [
  Packages(
      packageName: 'Northern Trip',
      price: 34000.0,
      destinations: ['Hunza', 'Skardu'],
      rating: 3.9,
      image: 'assets/images/skardu.jpg'),
  Packages(
      packageName: 'Southern Trip',
      price: 20000.0,
      destinations: ['Skardu', 'malam Jabba'],
      rating: 4.5,
      image: 'assets/images/hunza.jpg'),
];

final List<Destination> destinationList = [
  Destination(
      name: 'Hunza',
      image: 'assets/images/hunza.jpg',
      country: 'Pakistan',
      description:
          'The Hunza Valley is a mountainous valley in the northern part of the Gilgit-Baltistan region of Pakistan',
      packages: packagesList),
  Destination(
      name: 'Malam Jabba',
      image: 'assets/images/malam-jabba.jpg',
      country: 'Pakistan',
      description:
          'Malam Jabba ski resort is a ski resort situated in the Hindu Kush range of the Swat Valley',
      packages: packagesList),
  Destination(
      name: 'Naran Kaghan',
      image: 'assets/images/naran-kaghan.jpg',
      country: 'Pakistan',
      description:
          'Naran is a town and popular tourist destination in upper Kaghan Valley in Mansehra District',
      packages: packagesList),
  Destination(
      name: 'Skardu',
      image: 'assets/images/skardu.jpg',
      country: 'Pakistan',
      description: 'Skardu is a city located in Gilgit Baltistan',
      packages: packagesList),
];

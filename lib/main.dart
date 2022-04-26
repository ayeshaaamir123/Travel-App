import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:travel_app/constants/colors.dart';

import 'widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);
  final landingPageCarousel = [
    {
      'title': 'Hunza',
      'subtitle':
          'The Hunza Valley is a mountainous valley in the northern part of the Gilgit-Baltistan region of Pakistan, formed by the Hunza River, bordering Ishkoman to the northwest, Shigar to the southeast, Afghanistan\'s Wakhan Corridor to the north, and the Xinjiang region of China to the northeast.',
      'image': 'images/hunza.jpg'
    },
    {
      'title': 'Malam Jabba',
      'subtitle':
          'Malam Jabba ski resort is a ski resort situated in the Hindu Kush range of the Swat Valley in Khyber Pakhtunkhwa province, Pakistan at a top elevation of 2,804 metres (9,199 ft).The resort is located in Malam Jabba village, 40 kilometers east of Saidu Sharif and 314 kilometers northwest of Islamabad. It is the largest and oldest ski resort in Pakistan.',
      'image': 'images/malam-jabba.jpg'
    },
    {
      'title': 'Naran Kaghan',
      'subtitle':
          'Naran is a town and popular tourist destination in upper Kaghan Valley in Mansehra District of Khyber Pakhtunkhwa province of Pakistan. It is located 119 kilometers from Mansehra city at the altitude of 2,409 meters.It is located about 65 kilometers away from Babusar Top.',
      'image': 'images/naran-kaghan.jpg'
    },
    {
      'title': 'Skardu',
      'subtitle':
          'Skardu is a city located in Gilgit Baltistan, Pakistan, and serves as the capital of Skardu District and the Baltistan Division. Skardu is situated at an elevation of nearly 2,500 metres in the Skardu Valley, at the confluence of the Indus and Shigar Rivers.',
      'image': 'images/skardu.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      body: ListView(
        children: [
          CarouselSlider.builder(
              itemCount: landingPageCarousel.length,
              itemBuilder: (context, index, realIndex) {
                final landingPageElement = landingPageCarousel[index];
                return buildElement(landingPageElement, index);
              },
              options: CarouselOptions(height: 500))
        ],
      ),
    );
  }

  Widget buildElement(Map<String, String> landingPageElement, int index) {
    return Stack(
      children: [
        Container(
          child: Image.asset(landingPageElement['image'].toString(),
              fit: BoxFit.cover),
          margin: EdgeInsets.symmetric(horizontal: 12),
          
        )
      ],
    );
  }
}

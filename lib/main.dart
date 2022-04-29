import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/widgets/destination_carousel.dart';
import 'package:travel_app/widgets/package_carousel.dart';

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
        primaryColor: const Color(0xFF3EBACE),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF3EBACE),
          secondary: Color(0xFFD8ECF1),
        ),
        scaffoldBackgroundColor: const Color(0xFFF3F5F7),
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  final List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.car,
    FontAwesomeIcons.parachuteBox,
    FontAwesomeIcons.bicycle
  ];

  //to build the icons in _icons list
  Widget _buildIcons(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Theme.of(context).colorScheme.secondary
                : const Color(0xFFE7EBEE),
            borderRadius: BorderRadius.circular(30)),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).colorScheme.primary
              : const Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 20, right: 50, top: 20),
                child: Text(
                  'What would you like to find?',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 27.0),
                )),
            const SizedBox(
              height: 10.0,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // transforming _icons into a map with index as keys and IconData as the values then converting the map into an iterable using the .entries.map then for each element building an icon by passing the index
                children: _icons
                    .asMap()
                    .entries
                    .map((MapEntry e) => _buildIcons(e.key))
                    .toList()),
            const SizedBox(height: 20),
            // creating pages based on which button is pressed right now
            const DestinationCarousel(),
            const SizedBox(height: 10.0),
            const PackageCarousel(),
            //for the first button (plane)
            // if (_selectedIndex == 0)
            //   // Top Destinations

            // // for the second button (car)
            // else if (_selectedIndex == 1)
            //   Container(color: Colors.blue, height: 200, width: 200)

            // //for the third button (parachute)
            // else if (_selectedIndex == 2)
            //   Container(color: Colors.cyan, height: 200, width: 200)

            // //for the fourth button (bicycle)
            // else
            //   Container(
            //     color: Colors.orange,
            //     height: 200,
            //     width: 200,
            //   )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _currentTab,
          onTap: (int value) {
            setState(() {
              _currentTab = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.search,
                size: 30.0,
              ),
            ),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.location_pin,
                  size: 30.0,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.kindpng.com/picc/m/207-2074624_white-gray-circle-avatar-png-transparent-png.png'),
                  radius: 15,
                ))
          ]),
    );
  }
}

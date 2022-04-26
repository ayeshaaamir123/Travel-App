import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/constants/colors.dart';

class NavBar extends StatelessWidget with PreferredSizeWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: navbarColor,
      elevation: 4.0,
      title: Text(
        'PlanYourTrip',
        style: GoogleFonts.poppins(
          color: lightTextColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Our Trips',
            style: GoogleFonts.poppins(color: lightTextColor),
          ),
          style: TextButton.styleFrom(
              textStyle: TextStyle(color: lightTextColor, fontSize: 14)),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'About Us',
            style: GoogleFonts.poppins(color: lightTextColor),
          ),
          style: TextButton.styleFrom(
              textStyle: TextStyle(color: lightTextColor, fontSize: 14)),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Contact Us',
            style: GoogleFonts.poppins(color: Colors.white),
          ),
          style: TextButton.styleFrom(
              textStyle: TextStyle(color: lightTextColor, fontSize: 14)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 6.0),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Login",
              style: GoogleFonts.poppins(color: lightTextColor),
            ),
            style: TextButton.styleFrom(
              backgroundColor: secondaryColor,
              elevation: 2.0,
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

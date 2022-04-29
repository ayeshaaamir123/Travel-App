import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/constants/details.dart';
import 'package:travel_app/model/packages.dart';

class PackageCarousel extends StatelessWidget {
  const PackageCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Top Packages',
              style: GoogleFonts.poppins(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2)),
          GestureDetector(
              onTap: () {},
              child: Text(
                'See all',
                style: GoogleFonts.poppins(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16.0,
                    letterSpacing: 1.0),
              )),
        ]),
      ),
      // ignore: sized_box_for_whitespace
      Container(
        height: MediaQuery.of(context).size.height * 0.4,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: packagesList.length,
          itemBuilder: (BuildContext context, int index) {
            Packages packages = packagesList[index];
            return Container(
              margin: const EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width * 0.7,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    bottom: 5,
                    child: Container(
                      height: (MediaQuery.of(context).size.height * 0.4) / 2.4,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(packages.packageName,
                                style: GoogleFonts.poppins(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                )),
                            Text(
                              'Rs ${packages.price}',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              'Rating: ${packages.rating}',
                              style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0)
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage(packages.image),
                        height:
                            (MediaQuery.of(context).size.height * 0.4) / 1.6,
                        width: (MediaQuery.of(context).size.width * 0.7),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      )
    ]);
  }
}

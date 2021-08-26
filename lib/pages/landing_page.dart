import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIdx = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int idx}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIdx = idx;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xff1D1E3C),
                fontWeight:
                    idx == selectedIdx ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: idx == selectedIdx
                      ? Color(0xffFE9980)
                      : Colors.transparent),
            )
          ],
        ),
      );
    }

    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'background.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 30,
          ),
          child: Column(
            children: [
              //NOTE : NAVIGATION
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'logo.png',
                    width: 72,
                    height: 40,
                  ),
                  Row(
                    children: [
                      navItem(
                        title: 'Guides',
                        idx: 0,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      navItem(
                        title: 'Pricing',
                        idx: 1,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      navItem(
                        title: 'Team',
                        idx: 2,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      navItem(
                        title: 'Stories',
                        idx: 3,
                      ),
                    ],
                  ),
                  Image.asset(
                    'btn_account.png',
                    width: 163,
                    height: 53,
                  ),
                ],
              ),

              //NOTE: CONTENT
              SizedBox(
                height: 76,
              ),
              Image.asset(
                'illustration.png',
                width: 500,
              ),

              //NOTE: FOOTER
              SizedBox(
                height: 84,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'icon_scroll.png',
                    width: 24,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text('Scroll to Learn More',
                      style: GoogleFonts.poppins(
                          fontSize: 20, color: Colors.black)),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}

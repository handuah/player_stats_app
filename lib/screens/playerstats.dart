import 'package:flutter/material.dart';
import 'package:player_stats_app/utils.dart';

class Playerstats extends StatefulWidget {
  const Playerstats({super.key});

  @override
  State<Playerstats> createState() => _PlayerstatsState();
}

class _PlayerstatsState extends State<Playerstats> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        // padding: EdgeInsets.symmetric(horizontal: w * 0.05, vertical: h * 0.02),
        children: [
          Stack(
            children: [
              Container(
                height: h * 0.2,
                width: w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/avatar_blue.png'),
                    fit: BoxFit.fitHeight,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: w * 0.06, vertical: h * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage(
                            'assets/avatar.png',
                          ),
                          backgroundColor: Color(0xFFFFEEB0),
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Guenther',
                              softWrap: true,
                              style: bodyText.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: h * 0.024,
                                height: 1.0,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              'Madrista',
                              softWrap: true,
                              style: bodyText.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: h * 0.018,
                                height: 1.0,
                                color: lightb,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage(
                        'assets/real_logo.png',
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:player_stats_app/utils.dart';

class Playercomparison extends StatefulWidget {
  const Playercomparison({super.key});

  @override
  State<Playercomparison> createState() => _PlayercomparisonState();
}

class _PlayercomparisonState extends State<Playercomparison> {
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
          SizedBox(height: h * 0.04),
          Center(
            child: Text(
              'Player Comparisons',
              softWrap: true,
              style: bodyText.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: h * 0.024,
                height: 1.0,
                color: deepb,
              ),
            ),
          ),
          SizedBox(height: h * 0.03),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: w * 0.04,
              // vertical: h * 0.04,
            ),
            child: Container(
              height: h * 0.2,
              width: w,
              decoration: BoxDecoration(
                color: deepb,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Stack(
                children: [
                  Container(
                    height: h,
                    width: w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      image: const DecorationImage(
                        image: AssetImage('assets/scaff_blue.png'),
                        fit: BoxFit.fill,
                        opacity: 0.93,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: w * 0.04,
                      // vertical: h * 0.04,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 40.0,
                              backgroundImage: AssetImage(
                                'assets/bellingham.png',
                              ),
                              backgroundColor: Color(0xFFD9D9D9),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              'Bellingham',
                              softWrap: true,
                              style: bodyText.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: h * 0.017,
                                height: 1.0,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              'Forward',
                              softWrap: true,
                              style: bodyText.copyWith(
                                fontWeight: FontWeight.normal,
                                fontSize: h * 0.014,
                                height: 1.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Vrs',
                          softWrap: true,
                          style: bodyText.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: h * 0.02,
                            height: 1.0,
                            color: lightb,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 40.0,
                              backgroundImage: AssetImage(
                                'assets/mbappe.png',
                              ),
                              backgroundColor: Color(0xFFD9D9D9),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              'Mbappe',
                              softWrap: true,
                              style: bodyText.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: h * 0.017,
                                height: 1.0,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              'Forward',
                              softWrap: true,
                              style: bodyText.copyWith(
                                fontWeight: FontWeight.normal,
                                fontSize: h * 0.014,
                                height: 1.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.03),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: w * 0.04,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: h * 0.07,
                  width: w,
                  decoration: BoxDecoration(
                    color: deepb,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Key Stats',
                      softWrap: true,
                      style: bodyText.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: h * 0.02,
                        height: 1.0,
                        color: lightb,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: h * 0.03),
                Text(
                  'Passing Accuracy',
                  softWrap: true,
                  style: bodyText.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: h * 0.018,
                    height: 1.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: h * 0.02),
                //progressbar here
                CircularProgressIndicator(
                  value: 0.8,
                  backgroundColor: deepb,
                  strokeWidth: h * 0.01,
                ),

                indications(context, 'Matches Played', 4),
                indications(context, 'Minutes Playes', 300),
                indications(context, 'Goals', 8),
                indications(context, 'Attempts on Goal', 9),
                indications(context, 'Top Speed (km/h)', 32),
                indications(context, 'Distance covered (km)', 13),
                SizedBox(height: h * 0.04),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget indications(BuildContext context, String catName, int catNum) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: h * 0.02),
        Text(
          // 'Passing Accuracy',
          catName,
          softWrap: true,
          style: bodyText.copyWith(
            fontWeight: FontWeight.normal,
            fontSize: h * 0.018,
            height: 1.0,
            color: Colors.black,
          ),
        ),
        SizedBox(height: h * 0.02),
        Container(
          height: h * 0.04,
          width: w,
          decoration: BoxDecoration(
            color: deeppurp,
            borderRadius: BorderRadius.circular(
              40.0,
            ),
          ),
          child: Center(
            child: Text(
              // '4',
              catNum.toString(),
              softWrap: true,
              style: bodyText.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: h * 0.024,
                height: 1.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

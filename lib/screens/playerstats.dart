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
          SizedBox(height: h * 0.04),
          Center(
            child: Text(
              'Player Statistics',
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
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/england.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
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
                        const CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage(
                            'assets/bellingham.png',
                          ),
                          backgroundColor: Color(0xFFD9D9D9),
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jude Bellingham',
                              softWrap: true,
                              style: bodyText.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: h * 0.02,
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
                                fontWeight: FontWeight.bold,
                                fontSize: h * 0.018,
                                height: 1.0,
                                color: lightb,
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              '24 yrs',
                              softWrap: true,
                              style: bodyText.copyWith(
                                fontWeight: FontWeight.normal,
                                fontSize: h * 0.012,
                                height: 1.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/england.png',
                          height: h * 0.08,
                          width: w * 0.2,
                          fit: BoxFit.cover,
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

                indications(context),
                indications(context),
                indications(context),
                indications(context),
                indications(context),
                SizedBox(height: h * 0.04),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget indications(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: h * 0.02),
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
              '4',
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

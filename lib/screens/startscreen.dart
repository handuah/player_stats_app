import 'package:flutter/material.dart';
import 'package:player_stats_app/navigationWidget.dart';
import 'package:player_stats_app/utils.dart';

class Startscreen extends StatefulWidget {
  const Startscreen({super.key});

  @override
  State<Startscreen> createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: h,
            width: w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/player.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: h,
            width: w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/scaff_blue.png'),
                fit: BoxFit.cover,
                opacity: 0.8,
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.05, vertical: h * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: h * 0.1,
                  width: w * 0.4,
                  decoration: const BoxDecoration(
                    // color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                      fit: BoxFit.contain,
                      opacity: 0.8,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.35,
                ),
                Container(
                  height: h * 0.16,
                  // color: Colors.yellow,
                  child: Text(
                    'Your one stop App to all player statistics',
                    softWrap: true,
                    style: bodyText.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: h * 0.046,
                      height: 1.0,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
                Container(
                  height: h * 0.12,
                  // color: Colors.yellow,
                  child: Text(
                    'Track player performance with detailed stats, including distance covered, average speed, and top sprinting speed, all from your mobile device.',
                    softWrap: true,
                    style: bodyText.copyWith(
                      fontWeight: FontWeight.w100,
                      fontSize: h * 0.018,
                      height: 1.4,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                SizedBox(
                  height: h * 0.08,
                  width: w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Navigationwidget(),
                        ),
                      );
                    },
                    child: Text(
                      'Get Started',
                      style: bodyText.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: h * 0.02,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: bodyText.copyWith(
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.normal,
                        fontSize: h * 0.015,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: bodyText.copyWith(
                          color: lightb,
                          fontWeight: FontWeight.bold,
                          fontSize: h * 0.018,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

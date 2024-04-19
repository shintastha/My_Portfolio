import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Hi,\nI'm Shinta Shrestha,\nA Flutter Developer",
              style: TextStyle(
                fontSize: 30.0,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.yellowPrimary,
                ),
                onPressed: () {},
                child: const Text(
                  "Get in touch",
                ),
              ),
            )
          ]),
          Image.asset(
            "assets/my_flutter_avatar.png",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}

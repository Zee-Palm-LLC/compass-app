import 'package:compass_app/data/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'components/compass_screen.dart';
import 'components/custom_icons.dart';
import 'components/location_screen.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ScreenEnum screen = ScreenEnum.compass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              screen == ScreenEnum.compass ? CompassScreen() : LocationScreen(),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIcons(
                    onTap: () {
                      setState(() {
                        screen = ScreenEnum.compass;
                      });
                    },
                    icons: Icons.compass_calibration,
                    isTapped: screen == ScreenEnum.compass ? true : false,
                  ),
                  CustomIcons(
                    onTap: () {
                      setState(() {
                        screen = ScreenEnum.location;
                      });
                    },
                    icons: Icons.four_g_plus_mobiledata_outlined,
                    isTapped: screen == ScreenEnum.location ? true : false,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

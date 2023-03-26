import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sprung/sprung.dart';

import '../../controller/compass_controller.dart';

class CompassScreen extends StatelessWidget {
  const CompassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CompassController _compassController =
        context.watch<CompassController>();
    return Column(
      children: [
        const SizedBox(height: 30),
        const Text(
          'Sunday 14, July',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        const SizedBox(height: 50),
        SizedBox(
          height: 300,
          width: 300,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Neumorphic(
                style: const NeumorphicStyle(
                    depth: 15,
                    boxShape: NeumorphicBoxShape.circle(),
                    shape: NeumorphicShape.convex,
                    shadowLightColor: Colors.black87,
                    color: Colors.black26),
                child: Image.asset(
                  'assets/dial.png',
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                  color: Colors.black,
                ),
              ),
              AnimatedRotation(
                duration: const Duration(milliseconds: 1000),
                curve: Sprung.criticallyDamped,
                turns: -(_compassController.compassHeading ?? 0) / 360,
                child: Image.asset(
                  'assets/ticks.png',
                  height: 350,
                  width: 350,
                  fit: BoxFit.cover,
                ),
              ),
              Image.asset(
                'assets/pointer.png',
                height: 250,
                width: 250,
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 12),
                    Text(
                      '${_compassController.compassHeading?.round()}°',
                      style: GoogleFonts.redHatDisplay(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: const Color(0xFF4C4C4C),
                      ),
                    ),
                    Text(
                      '${_compassController.compassDirection}',
                      style: GoogleFonts.redHatDisplay(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xCC4C4C4C),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          height: 200,
          width: 200,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Neumorphic(
                style: const NeumorphicStyle(
                    depth: 15,
                    boxShape: NeumorphicBoxShape.circle(),
                    shape: NeumorphicShape.convex,
                    shadowLightColor: Colors.black87,
                    color: Colors.black26),
                child: Image.asset(
                  'assets/dial.png',
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                  color: Colors.black,
                ),
              ),
              AnimatedRotation(
                duration: const Duration(milliseconds: 1000),
                curve: Sprung.criticallyDamped,
                turns: -(_compassController.compassHeading ?? 0) / 360,
                child: Image.asset(
                  'assets/ticks.png',
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Image.asset(
                'assets/pointer.png',
                height: 200,
                width: 200,
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 12),
                    Text(
                      '${_compassController.compassHeading?.round()}°',
                      style: GoogleFonts.redHatDisplay(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: const Color(0xFF4C4C4C),
                      ),
                    ),
                    Text(
                      '${_compassController.compassDirection}',
                      style: GoogleFonts.redHatDisplay(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xCC4C4C4C),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

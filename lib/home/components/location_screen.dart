import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'neumophic_searchfield.dart';

class LocationScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        NeumorphicSearchField(
          controller: _searchController,
        ),
        const SizedBox(height: 100),
        Center(
          child: Neumorphic(
            style: NeumorphicStyle(
                depth: 25,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                shape: NeumorphicShape.concave,
                shadowLightColor: Colors.black,
                color: Colors.black),
                padding: const EdgeInsets.all(5),
            child: Container(
              height: 150,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage('assets/map.png'), fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Positioned(
                    top: -10,
                    right: -10,
                    left: -10,
                    bottom: -10,
                    child: Image.asset(
                      'assets/glass.png',
                      height: 200,
                      width: 260,
                      fit: BoxFit.cover,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 100),
        const Text(
          "New york",
          style: TextStyle(
              color: Colors.white, fontSize: 45, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 30),
        const Text(
          "10 : 00 am",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [
                Text(
                  "Length",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  "40.71427",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Column(
              children: const [
                Text(
                  "Latitude",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  "74.00059",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

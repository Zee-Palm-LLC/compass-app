import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeumorphicSearchField extends StatelessWidget {
  final TextEditingController controller;
  const NeumorphicSearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: const NeumorphicStyle(
          depth: 5,
          boxShape: NeumorphicBoxShape.stadium(),
          shape: NeumorphicShape.convex,
          shadowLightColor: Colors.grey,
          color: Colors.black26),
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        controller: controller,
        cursorColor: Colors.white,
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(color: Colors.white, fontSize: 16),
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 15),
          suffixIcon: Icon(Icons.search, color: Colors.grey),
          hintText: 'Search Location',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
        ),
      ),
    );
  }
}

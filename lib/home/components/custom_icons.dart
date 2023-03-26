import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomIcons extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData icons;
  final bool isTapped;
  const CustomIcons({super.key, this.onTap, required this.icons,this.isTapped=false});
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      padding: const EdgeInsets.all(18),
      style: NeumorphicStyle(
          boxShape: const NeumorphicBoxShape.circle(),
          shape: NeumorphicShape.convex,
          shadowLightColor: Colors.white,
          depth: isTapped ? -10 : 10,
          color: Colors.black26),
      onPressed: onTap,
      child: Icon(icons, color: Colors.white),
    );
  }
}

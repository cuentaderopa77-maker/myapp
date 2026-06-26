import 'package:flutter/material.dart';
import 'package:myapp/src/globals/responsive_widget.dart';

class Portada extends ResponsiveWidget {
  const Portada({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopPortada();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobilePortada();
  }
}

class DesktopPortada extends StatelessWidget {
  const DesktopPortada({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 530,
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
          image: AssetImage("assets/images/portada.webp"),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 155),
          Text(
            "Descubre la Colección",
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
          SizedBox(height: 18),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
            child: Center(
              child: Text(
                "COMPRA AHORA",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 140),
          Text(
            "invierno 2026",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class MobilePortada extends StatelessWidget {
  const MobilePortada({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 530,
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
          image: AssetImage("assets/images/portada.webp"),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 110),
          Text(
            "Descubre\nla Colección",
            style: TextStyle(color: Colors.white, fontSize: 60),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
            child: Center(
              child: Text(
                "COMPRA AHORA",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 50),
          Text(
            "invierno 2026",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

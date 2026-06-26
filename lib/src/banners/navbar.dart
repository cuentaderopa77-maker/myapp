import 'package:flutter/material.dart';
import 'package:myapp/src/globals/responsive_widget.dart';

class Navbar extends ResponsiveWidget {
  const Navbar({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopNavbar();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileNavbar();
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              Icon(Icons.menu, color: Colors.black, size: 30),
              SizedBox(width: 5),
              Text("Menú", style: TextStyle(color: Colors.black, fontSize: 20)),
            ],
          ),
          Text("VOYAGER", style: TextStyle(color: Colors.black, fontSize: 40)),
          Row(
            children: [
              Text("FAQ", style: TextStyle(color: Colors.black, fontSize: 20)),
              SizedBox(width: 20),
              Text(
                "Contacto",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(width: 20),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              Icon(Icons.menu, color: Colors.black, size: 30),
            ],
          ),
          Text("VOYAGER", style: TextStyle(color: Colors.black, fontSize: 30)),
          SizedBox(width: 40),
        ],
      ),
    );
  }
}

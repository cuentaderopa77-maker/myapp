import 'package:flutter/material.dart';
import 'package:myapp/src/banners/banner2.dart';
import 'package:myapp/src/banners/banners.dart';
import 'package:myapp/src/banners/footer.dart';
import 'package:myapp/src/banners/navbar.dart';
import 'package:myapp/src/banners/portada.dart';
import 'package:myapp/src/globals/whatsapp_button.dart';

class HomePageScreenUi extends StatefulWidget {
  const HomePageScreenUi({super.key});

  @override
  State<HomePageScreenUi> createState() => _HomePageScreenUiState();
}

class _HomePageScreenUiState extends State<HomePageScreenUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [Navbar(), Portada(), Banners(), Banner2(), Footer()],
            ),
          ),
          WhatsAppFloatingButton(
            phoneNumber:
                '541151560768', // Reemplazar con el número real de WhatsApp
            imagePath: 'assets/icons/wsp-logo-64px.webp',
          ),
        ],
      ),
    );
  }
}

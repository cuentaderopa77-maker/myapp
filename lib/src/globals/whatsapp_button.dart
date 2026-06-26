import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsAppFloatingButton extends StatelessWidget {
  final String phoneNumber;
  final String imagePath;
  final double size;
  final double bottom;
  final double right;

  const WhatsAppFloatingButton({
    super.key,
    required this.phoneNumber,
    required this.imagePath,
    this.size = 60.0,
    this.bottom = 20.0,
    this.right = 20.0,
  });

  Future<void> _launchWhatsApp() async {
    final cleanPhone = phoneNumber.replaceAll(RegExp(r'[^0-9]'), '');
    final uri = Uri.parse('https://wa.me/$cleanPhone');
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        debugPrint('No se pudo abrir WhatsApp: $uri');
      }
    } catch (e) {
      debugPrint('Error al abrir WhatsApp: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      right: right,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: _launchWhatsApp,
          child: SizedBox(
            width: size,
            height: size,
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}

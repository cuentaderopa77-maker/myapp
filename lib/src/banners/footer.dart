import 'package:flutter/material.dart';
import 'package:myapp/src/globals/responsive_widget.dart';

class Footer extends ResponsiveWidget {
  const Footer({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopFooter();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileFooter();
  }
}

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/footerfinal.webp"),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "VOYAGER",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(height: 5),
              Text(
                "Obtenga los primeros accesos a nuestra",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "coleccion invierno limitada",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 17),
              Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "REGISTRATE",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      decorationThickness: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "VOYAGER",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Av. Avellaneda 404",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Deposito Nástenka 1984",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Foster, Colombia",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                "www.VOYAGER.com",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Telefono",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "11 6876-7790",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "NUESTRAS REDES",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                "Tiktok, Instagram, Facebook",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "@VOYAGER",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                "Contacto",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "voyagercontacto@gmail.com",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 800,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/footerfinal.webp"),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 30),
          Column(
            children: [
              Text(
                "VOYAGER",
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
              SizedBox(height: 5),
              Container(
                height: 80,
                width: 420,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Obtenga los primeros accesos a nuestra",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "coleccion invierno limitada",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "REGISTRATE",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      decorationThickness: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text("VOYAGER", style: TextStyle(color: Colors.white, fontSize: 20)),
          Text(
            "Av. Avellaneda 404",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "Deposito Nástenka 1984",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "Foster, Colombia",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            "www.VOYAGER.com",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Telefono",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "11 6876-7790",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "NUESTRAS REDES",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            "Tiktok, Instagram, Facebook",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("@VOYAGER", style: TextStyle(color: Colors.white, fontSize: 20)),
          SizedBox(height: 10),
          Text(
            "Contacto",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "voyagercontacto@gmail.com",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/src/globals/responsive_widget.dart';

/*import 'package:flutter/material.dart';*/
//import 'package:carousel_slider/carousel_slider.dart';

class Banner2 extends ResponsiveWidget {
  const Banner2({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopBanner2();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileBanner2();
  }
}

class DesktopBanner2 extends StatelessWidget {
  const DesktopBanner2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 850,
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: SizedBox(
                width: 1200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      'Nuestros Servicios',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        cardService(
                          'assets/images/campera2.webp',
                          'CAMPERA',
                          '\$27.000,00',
                          () {
                            /*Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const SocialMediaScreenUi(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                return child; // Sin animación
                              },
                            ),
                          );*/
                          },
                        ),
                        cardService(
                          'assets/images/software.webp',
                          'Programación web',
                          'Diseño y desarrollo de paginas web, portafolios personales, landing pages.',
                          () {
                            /*Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const LandingPagesScreenUi(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                return child; // Sin animación
                              },
                            ),
                          );*/
                          },
                        ),
                        cardService(
                          'assets/images/imagenpers.webp',
                          'Imagen personal',
                          'Si queres tener tu marca personal, te ayudamos a crear tu imagen en internet.',
                          () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          /*Container(
            height: 120,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  violetColorApp,
                  backgroundColorApp,
                ],
              ),
            ),
          ),*/
        ],
      ),
    );
  }

  Container cardService(
    String imagePath,
    String title,
    String subtitle,
    onPressed,
  ) {
    return Container(
      width: 300,
      height: 450,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      // Para cubrir todo el contenedor
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(subtitle, textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: TextButton(
                      onPressed: onPressed,
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                        side: const BorderSide(
                          color: Colors.black,
                          width: 0.7,
                        ), // Borde marcado
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            0,
                          ), // Borde cuadrado
                        ),
                        backgroundColor:
                            Colors.transparent, // Fondo transparente
                      ),
                      child: const Text(
                        "Ver más",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileBanner2 extends StatefulWidget {
  const MobileBanner2({super.key});

  @override
  State<MobileBanner2> createState() => _MobileBanner2();
}

class _MobileBanner2 extends State<MobileBanner2> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 380,
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage("assets/images/glasseshd.webp"),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          SizedBox(height: 15),
          Text("MUJER", style: TextStyle(color: Colors.black, fontSize: 14)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Pre-Invierno 2026",
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
          ),
          /*Container(
            height: 100,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  backgroundColorApp,
                  violetColorApp,
                ],
              ),
            ),
          ),
          */
          Expanded(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const SizedBox(height: 20),
                    Expanded(
                      child: PageView(
                        controller: _pageController,
                        children: [
                          cardService(
                            'assets/images/cuello2.webp',
                            'KNITTED TURTLENECK',
                            '\$20.000,00',
                            () {
                              /*Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const SocialMediaScreenUi(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                return child; // Sin animación
                              },
                            ),
                          ); */
                            },
                          ),
                          cardService(
                            'assets/images/sweater2.webp',
                            'SWEATER',
                            '\$18.000,00',
                            () {
                              /*Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const LandingPagesScreenUi(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    return child; // Sin animación
                                  },
                                ),
                              );*/
                            },
                          ),
                          cardService(
                            'assets/images/cuello.webp',
                            'TURTLENECK SWEATER',
                            '\$18.000,00',
                            () {
                              /*Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const LandingPagesScreenUi(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    return child; // Sin animación
                                  },
                                ),
                              );*/
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => buildIndicator(index),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: _currentPage == 0
                            ? Colors.black12
                            : Colors.black,
                      ),
                      onPressed: () {
                        if (_currentPage > 0) {
                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: _currentPage == 2
                            ? Colors.black12
                            : Colors.black,
                      ),
                      onPressed: () {
                        if (_currentPage < 2) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator(int index) {
    return GestureDetector(
      onTap: () {
        _pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentPage == index ? Colors.blue : Colors.grey,
        ),
      ),
    );
  }
}

Container cardService(
  String imagePath,
  String title,
  String subtitle,
  onPressed,
) {
  return Container(
    margin: EdgeInsets.all(20),
    padding: EdgeInsets.all(10),
    width: 300,
    height: 470,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        Expanded(
          flex: 1,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    // Para cubrir todo el contenedor
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        subtitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              /*Expanded(
                flex: 1,
                child: Center(
                  child: TextButton(
                    onPressed: onPressed,
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      textStyle: const TextStyle(fontSize: 16),
                      side: const BorderSide(
                        color: Colors.black,
                        width: 0.7,
                      ), // Borde marcado
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          0,
                        ), // Borde cuadrado
                      ),
                      backgroundColor: Colors.transparent, // Fondo transparente
                    ),
                    child: const Text(
                      "Ver más",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ), */
            ],
          ),
        ),
      ],
    ),
  );
}

/*class Banner2 extends ResponsiveWidget {
  const Banner2({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopBanner2();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileBanner2();
  }
}

class DesktopBanner2 extends StatelessWidget {
  const DesktopBanner2({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      height: 1000,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 380,
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage("assets/images/glasseshd.webp"),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          SizedBox(height: 15),
          Text("MUJER", style: TextStyle(color: Colors.black, fontSize: 14)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Pre-Invierno 2026",
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: 350,
                    width: 300,
                    color: const Color.fromARGB(255, 245, 244, 244),
                    child: Image.asset("assets/images/cuello2.webp"),
                  ),
                  Text(
                    "KNITTED TURTLENECK",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    "\$20.000,00",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 350,
                    width: 300,
                    color: const Color.fromARGB(255, 245, 244, 244),
                    child: Image.asset("assets/images/sweater2.webp"),
                  ),
                  Text(
                    "SWEATER",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    "\$18.000,00",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 350,
                    width: 300,
                    color: const Color.fromARGB(255, 245, 244, 244),
                    child: Image.asset("assets/images/cuello.webp"),
                  ),
                  Text(
                    "TURTLENECK SWEATER",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    "\$18.000,00",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            height: 60,
            width: 290,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 0.5),
            ),
            child: Center(
              child: Text(
                "Descubrir las nuevas colecciones",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileBanner2 extends StatelessWidget {
  const MobileBanner2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 380,
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage("assets/images/glasseshd.webp"),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          SizedBox(height: 15),
          Text("MUJER", style: TextStyle(color: Colors.black, fontSize: 14)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Pre-Invierno 2026",
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: 350,
                    width: 300,
                    color: const Color.fromARGB(255, 245, 244, 244),
                    child: Image.asset("assets/images/cuello2.webp"),
                  ),
                  Text(
                    "CAMISA",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    "\$15.000,00",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 350,
                    width: 300,
                    color: const Color.fromARGB(255, 245, 244, 244),
                    child: Image.asset("assets/images/sweater2.webp"),
                  ),
                  Text(
                    "CAMISA",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    "\$15.000,00",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 350,
                    width: 300,
                    color: const Color.fromARGB(255, 245, 244, 244),
                    child: Image.asset("assets/images/cuello.webp"),
                  ),
                  Text(
                    "CAMISA",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    "\$15.000,00",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            height: 60,
            width: 290,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 0.5),
            ),
            child: Center(
              child: Text(
                "Descubrir las nuevas colecciones",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/

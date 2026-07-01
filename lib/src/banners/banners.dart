import 'package:flutter/material.dart';
import 'package:myapp/src/globals/responsive_widget.dart';

/*import 'package:flutter/material.dart';*/
//import 'package:carousel_slider/carousel_slider.dart';

class Banners extends ResponsiveWidget {
  const Banners({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopBanners();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileBanners();
  }
}

class DesktopBanners extends StatelessWidget {
  const DesktopBanners({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 630,
      child: Column(
        children: [
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Explore la seccion de creadores",
              style: TextStyle(color: Colors.black, fontSize: 35),
            ),
          ),
          Expanded(
            child: Center(
              child: SizedBox(
                width: 1700,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          'assets/images/cardigan.webp',
                          'CARDIGAN',
                          '\$15.000,00',
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
                          'assets/images/coat.webp',
                          'SACO',
                          '\$24.000,00',
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
                          'assets/images/campera.webp',
                          'CAMPERA',
                          '\$22.000,00',
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
      margin: EdgeInsets.all(10),
      width: 400,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 0,
            child: Center(
              child: Container(
                width: 300,
                height: 381,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(240, 250, 250, 250),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    // Para cubrir todo el contenedor
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Column(
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
                /*Expanded(
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
                ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileBanners extends StatefulWidget {
  const MobileBanners({super.key});

  @override
  State<MobileBanners> createState() => _MobileBanners();
}

class _MobileBanners extends State<MobileBanners> {
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
      color: Colors.white,
      width: double.infinity,
      height: 600,
      child: Column(
        children: [
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
          ),*/
          Expanded(
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Explore la seccion de creadores",
                        style: TextStyle(color: Colors.black, fontSize: 28),
                      ),
                    ),
                    Expanded(
                      child: PageView(
                        controller: _pageController,
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
                          );
                          */
                            },
                          ),
                          cardService(
                            'assets/images/cardigan.webp',
                            'CARDIGAN',
                            '\$15.000,00',
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
                            'assets/images/coat.webp',
                            'SACO',
                            '\$24.000,00',
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
                            'assets/images/campera.webp',
                            'CAMPERA',
                            '\$22.000,00',
                            () {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
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
                        color: _currentPage == 3
                            ? Colors.black12
                            : Colors.black,
                      ),
                      onPressed: () {
                        if (_currentPage < 3) {
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
    margin: EdgeInsets.all(10),
    width: 300,
    height: 300,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        Expanded(
          flex: 0,
          child: Center(
            child: Container(
              width: 300,
              height: 381,
              decoration: BoxDecoration(
                color: const Color.fromARGB(240, 250, 250, 250),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  // Para cubrir todo el contenedor
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Column(
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
                  const SizedBox(height: 2),
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

/*class Banners extends ResponsiveWidget {
  const Banners({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopBanners();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileBanners();
  }
}

class DesktopBanners extends StatelessWidget {
  const DesktopBanners({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Explore la seccion de creadores",
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
                    child: Image.asset("assets/images/campera2.webp"),
                  ),
                  Text(
                    "CAMPERA",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    "\$27.000,00",
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
                    child: Image.asset("assets/images/cardigan.webp"),
                  ),
                  Text(
                    "CARDIGAN",
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
                    child: Image.asset("assets/images/campera.webp"),
                  ),
                  Text(
                    "CAMPERA",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    "\$22.000,00",
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
                    child: Image.asset("assets/images/coat.webp"),
                  ),
                  Text(
                    "SACO",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    "\$24.000,00",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileBanners 
extends StatelessWidget {
  const MobileBanners({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Explore la seccion de creadores",
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
                    child: Image.asset("assets/images/campera2.webp"),
                  ),
                  Text(
                    "CAMPERA",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    "\$27.000,00",
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
                    child: Image.asset("assets/images/cardigan.webp"),
                  ),
                  Text(
                    "CARDIGAN",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 350,
                    width: 300,
                    color: const Color.fromARGB(255, 245, 244, 244),
                    child: Image.asset("assets/images/campera.webp"),
                  ),
                  Text(
                    "CAMPERA",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    "\$22.000,00",
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
                    child: Image.asset("assets/images/coat.webp"),
                  ),
                  Text(
                    "SACO",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    "\$24.000,00",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}*/

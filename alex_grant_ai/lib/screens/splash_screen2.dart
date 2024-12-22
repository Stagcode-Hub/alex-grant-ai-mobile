import 'package:alex_grant_ai/screens/slpash_screen3.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          SplashScreen2(),
        ]),
      ),
    );
  }
}

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 844,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFF222222)),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 390,
                  height: 844,
                  decoration: BoxDecoration(color: Colors.black),
                ),
              ),
              Positioned(
                left: 24,
                top: 69,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 28,
                        height: 12,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFF7A3AA2),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        width: 42,
                        height: 11,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        width: 42,
                        height: 11,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 105,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Unlock the future with the',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: 'Euclid Circular A',
                          fontWeight: FontWeight.w300,
                          letterSpacing: -0.52,
                        ),
                      ),
                      TextSpan(
                        text: ' \n',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: 'Euclid Circular A',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.52,
                        ),
                      ),
                      TextSpan(
                        text: 'Smartest AI  Assistant.',
                        style: TextStyle(
                          color: Color(0xFFBC8DE3),
                          fontSize: 26,
                          fontFamily: 'Euclid Circular A',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.52,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 17,
                top: 726,
                right: 17,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to another screen when the button is clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SplashScreen03(), // Replace NextScreen with your target screen
                      ),
                    );
                  },
                child: Container(
                  width: 356,
                  height: 56,
                  padding: const EdgeInsets.all(10),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFAE70DD),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFF74359D),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x7FC7A2E9),
                        blurRadius: 0,
                        offset: Offset(0, 0),
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Continue',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Euclid Circular A',
                          fontWeight: FontWeight.w500,
                          height: 1,
                          letterSpacing: -0.40,
                        ),
                      ),
                    ],
                  ),
                ),
                ),
              ),
              Positioned(
                left: 3098,
                top: 1694,
                child: Container(
                  width: 342,
                  height: 430,
                  decoration: ShapeDecoration(
                    color: Color(0xFF121013),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.30,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Color(0xFF6A656E),
                      ),
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 299.11,
                top: 135,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.16),
                  child: Container(
                    width: 76.50,
                    height: 31.14,
                    child: Stack(),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 183,
                child: SizedBox(
                  width: 319,
                  height: 56,
                  child: Text(
                    'your smart, friendly assistant is here to simplify your day.',
                    style: TextStyle(
                      color: Color(0xFFE4E6EB),
                      fontSize: 18,
                      fontFamily: 'Euclid Circular A',
                      fontWeight: FontWeight.w300,
                      height: 1.56,
                      letterSpacing: -0.20,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 239,
                child: Container(
                  width: 320,
                  height: 439,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/robot1.png"), // Replace with your asset path
                      fit: BoxFit.cover, // Adjust the image to cover the background
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 326,
                top: 705.44,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                  child: Container(
                    width: 230,
                    height: 44.44,
                    child: Stack(),
                  ),
                ),
              ),
              Positioned(
                left: 317.05,
                top: 353.79,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 44.05,
                    height: 51.79,
                    padding: const EdgeInsets.symmetric(horizontal: 1.84, vertical: 2.16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star.png',
                            width: 44.05,
                            height: 51.79,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 265,
                top: 314,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 24,
                    height: 28,
                    padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1.17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 84.05,
                top: 403.79,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 44.05,
                    height: 51.79,
                    padding: const EdgeInsets.symmetric(horizontal: 1.84, vertical: 2.16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star.png',
                            width: 44.05,
                            height: 51.79,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 126.05,
                top: 610.79,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 44.05,
                    height: 51.79,
                    padding: const EdgeInsets.symmetric(horizontal: 1.84, vertical: 2.16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star.png',
                            width: 44.05,
                            height: 51.79,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 319,
                top: 450,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 24,
                    height: 28,
                    padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1.17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star.png',
                            width: 44.05,
                            height: 51.79,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 337,
                top: 387,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 24,
                    height: 28,
                    padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1.17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star.png',
                            width: 44.05,
                            height: 51.79,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 341,
                top: 594,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 24,
                    height: 28,
                    padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1.17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star.png',
                            width: 44.05,
                            height: 51.79,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 355,
                top: 449,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 24,
                    height: 28,
                    padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1.17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star.png',
                            width: 44.05,
                            height: 51.79,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 343,
                top: 538,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 24,
                    height: 28,
                    padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1.17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star.png',
                            width: 44.05,
                            height: 51.79,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 82,
                top: 580,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 24,
                    height: 28,
                    padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1.17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star.png',
                            width: 44.05,
                            height: 51.79,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 57,
                top: 534,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 24,
                    height: 28,
                    padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1.17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star.png',
                            width: 44.05,
                            height: 51.79,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 86,
                top: 455,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 24,
                    height: 28,
                    padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1.17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star.png',
                            width: 44.05,
                            height: 51.79,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 126,
                top: 378,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 24,
                    height: 28,
                    padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1.17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star.png',
                            width: 44.05,
                            height: 51.79,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 144,
                top: 291,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 24,
                    height: 28,
                    padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1.17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star.png',
                            width: 44.05,
                            height: 51.79,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 295.05,
                top: 610.79,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 44.05,
                    height: 51.79,
                    padding: const EdgeInsets.symmetric(horizontal: 1.84, vertical: 2.16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star.png',
                            width: 44.05,
                            height: 51.79,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
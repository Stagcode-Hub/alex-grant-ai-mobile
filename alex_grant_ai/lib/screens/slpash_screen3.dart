import 'package:alex_grant_ai/screens/slpash_screen3.dart';
import 'package:alex_grant_ai/screens/splash_screen4.dart';
import 'package:flutter/material.dart';
class SplashScreen03 extends StatelessWidget {
  const SplashScreen03 ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          SplashScreen3(),
        ]),
      ),
    );
  }
}

class SplashScreen3 extends StatelessWidget {
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 105,
                child: SizedBox(
                  width: 334,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Chat with your',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontFamily: 'Euclid Circular A',
                            fontWeight: FontWeight.w300,
                            letterSpacing: -0.52,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontFamily: 'Euclid Circular A',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.52,
                          ),
                        ),
                        TextSpan(
                          text: 'Favourite AI.',
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
              ),
              Positioned(
                left: 17,
                top: 726,
                right:10,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to another screen when the button is clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SplashScreen04(), // Replace NextScreen with your target screen
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
                left: 241.11,
                top: 124.75,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.29),
                  child: Container(
                    width: 76.50,
                    height: 31.14,
                    child: Stack(),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 149,
                child: SizedBox(
                  width: 334,
                  height: 47,
                  child: Text(
                    'Get accurate responses tailored to your needs in real time.',
                    style: TextStyle(
                      color: Color(0xFFE9E9E9),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      height: 1.40,
                      letterSpacing: -0.16,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 219,
                child: Container(
                  width: 388,
                  height: 473,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/robot2.png"), // Replace with your asset path
                      fit: BoxFit.cover, // Adjust the image to cover the background
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 320,
                top: 706.44,
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
                left: 77,
                top: 507,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 31,
                    height: 37,
                    padding: const EdgeInsets.symmetric(horizontal: 1.29, vertical: 1.54),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 333,
                top: 592,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 42,
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 1.75, vertical: 2.08),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 122,
                top: 613,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 42,
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 1.75, vertical: 2.08),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 309,
                top: 466,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 21,
                    height: 25,
                    padding: const EdgeInsets.only(
                      top: 1.04,
                      left: 0.87,
                      right: 0.88,
                      bottom: 1.04,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 303,
                top: 495,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 9,
                    height: 11,
                    padding: const EdgeInsets.only(
                      top: 0.46,
                      left: 0.37,
                      right: 0.38,
                      bottom: 0.46,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 141,
                top: 572,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 9,
                    height: 11,
                    padding: const EdgeInsets.only(
                      top: 0.46,
                      left: 0.37,
                      right: 0.38,
                      bottom: 0.46,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 92,
                top: 458,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 9,
                    height: 11,
                    padding: const EdgeInsets.only(
                      top: 0.46,
                      left: 0.37,
                      right: 0.38,
                      bottom: 0.46,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 281,
                top: 572,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 9,
                    height: 11,
                    padding: const EdgeInsets.only(
                      top: 0.46,
                      left: 0.37,
                      right: 0.38,
                      bottom: 0.46,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 332,
                top: 505,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 9,
                    height: 11,
                    padding: const EdgeInsets.only(
                      top: 0.46,
                      left: 0.37,
                      right: 0.38,
                      bottom: 0.46,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 80,
                top: 550,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 9,
                    height: 11,
                    padding: const EdgeInsets.only(
                      top: 0.46,
                      left: 0.37,
                      right: 0.38,
                      bottom: 0.46,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 96,
                top: 493,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 9,
                    height: 11,
                    padding: const EdgeInsets.only(
                      top: 0.46,
                      left: 0.37,
                      right: 0.38,
                      bottom: 0.46,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 326,
                top: 424,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 21,
                    height: 25,
                    padding: const EdgeInsets.only(
                      top: 1.04,
                      left: 0.87,
                      right: 0.88,
                      bottom: 1.04,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                top: 388,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 31,
                    height: 37,
                    padding: const EdgeInsets.symmetric(horizontal: 1.29, vertical: 1.54),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 332,
                top: 320,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 42,
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 1.75, vertical: 2.08),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 98,
                top: 305,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 31,
                    height: 37,
                    padding: const EdgeInsets.symmetric(horizontal: 1.29, vertical: 1.54),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 130,
                top: 283,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 13,
                    height: 16,
                    padding: const EdgeInsets.symmetric(horizontal: 0.54, vertical: 0.67),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 106,
                top: 429,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 16,
                    height: 19,
                    padding: const EdgeInsets.symmetric(horizontal: 0.67, vertical: 0.79),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
                left: 272,
                top: 273,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: const EdgeInsets.all(0.50),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/star2.png',
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
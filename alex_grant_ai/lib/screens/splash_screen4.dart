import 'package:alex_grant_ai/screens/sign_up.dart';
import 'package:alex_grant_ai/screens/slpash_screen3.dart';
import 'package:flutter/material.dart';
class SplashScreen04 extends StatelessWidget {
  const SplashScreen04 ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          SplashScreen4(),
        ]),
      ),
    );
  }
}
class SplashScreen4 extends StatelessWidget {
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
                        text: 'Smarter communication ',
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
                        text: 'With Alex!.',
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
                left: 12,
                top: 726,
                right: 10,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to another screen when the button is clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpState(), // Replace NextScreen with your target screen
                      ),
                    );
                  },
                child: Container(
                  width: 366,
                  height: 56,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFF5E216D),  // Set the background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 145,
                        top: 20,
                        child: Text(
                          'Start Chat',
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
                      ),
                    ],
                  ),
                ),
                ),
              ),
              Positioned(
                left: 175.11,
                top: 132.75,
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
                top: 180,
                child: SizedBox(
                  width: 319,
                  height: 38,
                  child: Text(
                    'Start exploring everything Alex  can do for you.',
                    style: TextStyle(
                      color: Color(0xFFE9E9E9),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      height: 1.40,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -4,
                top: 202,
                child: Container(
                  width: 394,
                  height: 514,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/robot3.png"), // Replace with your asset path
                      fit: BoxFit.cover, // Adjust the image to cover the background
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 322,
                top: 700.44,
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
                left: 161,
                top: 227,
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
              Positioned(
                left: 330,
                top: 324,
                child: Container(
                  width: 33,
                  height: 39,
                  padding: const EdgeInsets.symmetric(horizontal: 1.38, vertical: 1.62),
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
              Positioned(
                left: 264,
                top: 409,
                child: Container(
                  width: 33,
                  height: 39,
                  padding: const EdgeInsets.symmetric(horizontal: 1.38, vertical: 1.62),
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
              Positioned(
                left: 294,
                top: 560,
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
              Positioned(
                left: 45,
                top: 562,
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
              Positioned(
                left: 320,
                top: 473,
                child: Container(
                  width: 22,
                  height: 26,
                  padding: const EdgeInsets.symmetric(horizontal: 0.92, vertical: 1.08),
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
              Positioned(
                left: 342,
                top: 403,
                child: Container(
                  width: 22,
                  height: 26,
                  padding: const EdgeInsets.symmetric(horizontal: 0.92, vertical: 1.08),
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
              Positioned(
                left: 264,
                top: 577,
                child: Container(
                  width: 22,
                  height: 26,
                  padding: const EdgeInsets.symmetric(horizontal: 0.92, vertical: 1.08),
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
              Positioned(
                left: 18,
                top: 311,
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
              Positioned(
                left: 54,
                top: 449,
                child: Container(
                  width: 25,
                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 1.04, vertical: 1.25),
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
              Positioned(
                left: 27,
                top: 526,
                child: Container(
                  width: 25,
                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 1.04, vertical: 1.25),
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
              Positioned(
                left: 24,
                top: 400,
                child: Container(
                  width: 25,
                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 1.04, vertical: 1.25),
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
              Positioned(
                left: 53,
                top: 286.11,
                child: Container(
                  width: 12.85,
                  height: 15.11,
                  padding: const EdgeInsets.symmetric(horizontal: 0.54, vertical: 0.63),
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
              Positioned(
                left: 96,
                top: 437.11,
                child: Container(
                  width: 12.85,
                  height: 15.11,
                  padding: const EdgeInsets.symmetric(horizontal: 0.54, vertical: 0.63),
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
              Positioned(
                left: 109,
                top: 577.11,
                child: Container(
                  width: 12.85,
                  height: 15.11,
                  padding: const EdgeInsets.symmetric(horizontal: 0.54, vertical: 0.63),
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
              Positioned(
                left: 39,
                top: 635.11,
                child: Container(
                  width: 12.85,
                  height: 15.11,
                  padding: const EdgeInsets.symmetric(horizontal: 0.54, vertical: 0.63),
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
              Positioned(
                left: 329,
                top: 570.11,
                child: Container(
                  width: 12.85,
                  height: 15.11,
                  padding: const EdgeInsets.symmetric(horizontal: 0.54, vertical: 0.63),
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
            ],
          ),
        ),
      ],
    );
  }
}
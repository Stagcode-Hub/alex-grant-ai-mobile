import 'dart:async';
import 'package:flutter/material.dart';

import 'login.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: OtpState(),
        ),
      ),
    );
  }
}

class OtpState extends StatefulWidget {
  const OtpState({super.key});

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<OtpState> {
  final TextEditingController passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  int _timeRemaining = 45;
  Timer? _timer; // Make _timer nullable to handle initialization safely
  final List<TextEditingController> otpControllers = List.generate(4, (_) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel(); // Cancel any existing timer before starting a new one
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (_timeRemaining > 0) {
          _timeRemaining--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty && index < otpControllers.length - 1) {
      FocusScope.of(context).requestFocus(focusNodes[index + 1]);
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(focusNodes[index - 1]);
    }
  }

  void _resendOtp() {
    setState(() {
      _timeRemaining = 45;
    });
    _startTimer();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Image.asset(
              'assets/images/Tick.png',
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                'The OTP has been resent',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Euclid Circular A',
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF15A336),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.only(bottom: 80, left: 20, right: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel(); // Safely cancel the timer
    for (var controller in otpControllers) {
      controller.dispose();
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Material(
          color: Colors.transparent,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width, // Full width of the screen
                height: MediaQuery.of(context).size.height, // Full height of the screen
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: const Color(0xFF222222), // Container color
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/rectangle_background.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 29,
                      top: 56,
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                            ),
                            const SizedBox(width: 51),
                            Text(
                              'Create an Account',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Euclid Circular A',
                                fontWeight: FontWeight.w500,
                                height: 1.11,
                                letterSpacing: -0.20,
                                decoration: TextDecoration.none,  // Add this line to remove any underline
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 122,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // First SizedBox: Title
                            SizedBox(
                              width: 400,
                              height: 30,
                              child: Text(
                                'Enter the code',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: 'Euclid Circular A',
                                  fontWeight: FontWeight.w600,
                                  height: 1,
                                  letterSpacing: -0.40,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            // Second SizedBox: The message with different styles for different parts
                            SizedBox(
                              width: 300,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Enter code sent to  ',
                                      style: TextStyle(
                                        color: Color(0xFFE4E6EB),
                                        fontSize: 12,
                                        fontFamily: 'Euclid Circular A',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'adelia.larsson@mail.com',
                                      style: TextStyle(
                                        color: Color(0xFFE4E6EB),
                                        fontSize: 16,
                                        fontFamily: 'Euclid Circular A',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                overflow: TextOverflow.ellipsis, // Prevent text overflow if it gets too long
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 48,
                      top: 308,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        decoration: ShapeDecoration(
                          color: Color(0x662A232F),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: _resendOtp, // Trigger OTP resend
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Didn’t receive the code? ',
                                      style: TextStyle(
                                        color: Color(0xFFE4E6EB),
                                        fontSize: 14,
                                        fontFamily: 'Euclid Circular A',
                                        fontWeight: FontWeight.w300,
                                        height: 1.14,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Resend code ($_timeRemaining) ',
                                      style: TextStyle(
                                        color: Color(0xFF8E44BE),
                                        fontSize: 14,
                                        fontFamily: 'Euclid Circular A',
                                        fontWeight: FontWeight.w600,
                                        height: 1.14,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 212,
                      right: 0,
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,  // Ensure the Row takes up the full available width
                          mainAxisAlignment: MainAxisAlignment.center,  // Center the content in the Row
                          crossAxisAlignment: CrossAxisAlignment.center,  // Vertically center the children
                          children: [
                            ...List.generate(4, (index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Container(
                                  width: 64,
                                  height: 64,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: TextField(
                                    controller: otpControllers[index],
                                    focusNode: focusNodes[index],
                                    maxLength: 1, // Limit input to a single character
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontFamily: 'Euclid Circular A',
                                      fontWeight: FontWeight.w600,
                                      height: 1.54, // Adjust the height to match the original text
                                    ),
                                    textAlign: TextAlign.center, // Center the text horizontally
                                    textAlignVertical: TextAlignVertical.center, // Center the text vertically
                                    decoration: InputDecoration(
                                      counterText: '', // Hide the character counter
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFF2A232F),
                                    ),
                                    onChanged: (value) {
                                      _onChanged(value, index); // Handle input change
                                    },
                                  ),
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),

                    Positioned(
                      left: 0,
                      right: 0,
                      top: 430, // Keep the vertical position as it is
                      child: Align(
                        alignment: Alignment.center, // Center the button horizontally
                        child: Material(
                          color: Colors.transparent, // Makes the Material background transparent
                          child: Container(
                            width: 320,
                            height: 56,
                            decoration: ShapeDecoration(
                              color: Color(0xFF5E216D), // Set background color for button using hex color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16), // Rounded corners
                              ),
                            ),
                            child: InkWell(
                              onTap: () {

                                print('Button clicked!');
                                // Add your onTap logic here
                                _showOtpVerifiedSuccessfullyModal(context);
                              },
                              child: Center(
                                child: Text(
                                  'Next',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Euclid Circular A',
                                    fontWeight: FontWeight.w600,
                                    height: 1,
                                    letterSpacing: -0.40,
                                    decoration: TextDecoration.none,  // Remove any underline
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



void _showOtpVerifiedSuccessfullyModal(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, // Prevent closing the modal by tapping outside
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent, // Transparent background
        child: Center( // Center the modal in the middle of the screen
          child: Container(
            width: 400,
            height: 450,
            padding: const EdgeInsets.all(32),
            decoration: ShapeDecoration(
              color: Color(0xFF161117),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between text and button
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20), // Add space on top of the animated checkmark
                AnimatedCheckmark(), // Add the animated checkmark here
                const SizedBox(height: 20), // Add space below the checkmark
                SizedBox(
                  width: 240,
                  child: Text(
                    'Email Verified Successfully!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: 'Euclid Circular A',
                      fontWeight: FontWeight.w600,
                      height: 1.43,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the modal
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const LoginScreen()), // Navigate to the Login screen
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF5E216D), // Set background color here
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                  ),
                  child: Text(
                    'Login to Your Account',
                    textAlign: TextAlign.center, // Center-align the text
                    overflow: TextOverflow.ellipsis, // Handle overflow with an ellipsis
                    maxLines: 1, // Ensure the text stays on one line
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Euclid Circular A',
                      fontWeight: FontWeight.w600,
                      height: 1,
                      letterSpacing: -0.40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

class AnimatedCheckmark extends StatefulWidget {
  @override
  _AnimatedCheckmarkState createState() => _AnimatedCheckmarkState();
}

class _AnimatedCheckmarkState extends State<AnimatedCheckmark>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true); // Repeat the animation

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: FadeTransition(
        opacity: _opacityAnimation,
        child: Icon(
          Icons.check_circle,
          color: Colors.purple,
          size: 50, // Adjust the size of the checkmark
        ),
      ),
    );
  }
}
import 'dart:async'; // Add this import at the top of your file
import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: SingleChildScrollView( // Wrap the content with SingleChildScrollView
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
  bool _isPasswordVisible = false; // Track password visibility
  int _timeRemaining = 45; // Starting time for countdown
  late Timer _timer;
  final List<TextEditingController> otpControllers = List.generate(4, (_) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());


  @override
  void initState() {
    super.initState();
    // Start the timer when the widget is initialized
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeRemaining > 0) {
        setState(() {
          _timeRemaining--;
        });
      } else {
        _timer.cancel(); // Stop the timer when it reaches 0
      }
    });
  }

  void _onChanged(String value, int index) {
    // Move to the next field if the current field is filled
    if (value.isNotEmpty && index < otpControllers.length - 1) {
      FocusScope.of(context).requestFocus(focusNodes[index + 1]);
    }
    // Optionally, go back to the previous field if the current field is empty
    else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(focusNodes[index - 1]);
    }
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    for (var controller in otpControllers) {
      controller.dispose(); // Dispose of OTP controllers
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose(); // Dispose of FocusNodes
    }
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Keep Material here for transparent background
      body: SingleChildScrollView(
        child: Material(
          color: Colors.transparent,
          child: Column(  // Column expects a list of children
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
                          crossAxisAlignment: CrossAxisAlignment.center, // Align text vertically in the center
                          children: [
                            Text.rich(
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
                              textAlign: TextAlign.left, // Align text to the left of the Row
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

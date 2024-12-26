import 'package:alex_grant_ai/screens/password.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: SingleChildScrollView( // Wrap the content with SingleChildScrollView
          child: SignUpState(),
        ),
      ),
    );
  }
}

class SignUpState extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(  // Wrap your body with SingleChildScrollView
            child: Material(  // Make sure you
        color: Colors.transparent,  // If you want a transparent background
        child: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width, // Full width of the screen
          height: MediaQuery.of(context).size.height, // Full height of the screen
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFF222222)),
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
                left: 40,
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


                      Center(
                        child: Text(
                          'Create an Account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24, // Adjust the font size as needed
                            fontFamily: 'Euclid Circular A',
                            fontWeight: FontWeight.w500,
                            height: 1.11,
                            letterSpacing: -0.20,
                            decoration: TextDecoration.none, // Remove any underline
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 110,
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Username TextField
                      Container(
                        width: 320,
                        height: 88,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 320,
                              child: Text(
                                'Username',
                                style: TextStyle(
                                  color: Color(0xFFF8FAFC),
                                  fontSize: 16,
                                  fontFamily: 'Euclid Circular A',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                  decoration: TextDecoration.none,  // Add this line to remove any underline
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              width: 350,
                              height: 56,
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1, color: Colors.white),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        // Replace the Icon with an Image.asset widget
                                        Container(
                                          width: 18,  // Adjust the width and height to match the size of your icon
                                          height: 18,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle, // If you want the image to be circular, use BoxShape.circle
                                          ),
                                          child: Image.asset(
                                            'assets/images/fi_user.png', // Replace with your image path
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      controller: usernameController,
                                      style: TextStyle(
                                        color: Color(0xFF908A95),
                                        fontSize: 14,
                                        fontFamily: 'Euclid Circular A',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                        decoration: TextDecoration.none,
                                      ),
                                      decoration: InputDecoration(
                                        hintText: 'Your username',
                                        hintStyle: TextStyle(
                                          color: Color(0xFF908A95),
                                          fontSize: 14,
                                          fontFamily: 'Euclid Circular A',
                                          fontWeight: FontWeight.w400,
                                          height: 1.50,
                                        ),
                                        border: InputBorder.none,  // Removes the border
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: 350,
                        height: 88,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 350,
                              child: Text(
                                'Email address',
                                style: TextStyle(
                                  color: Color(0xFFF8FAFC),
                                  fontSize: 16,
                                  fontFamily: 'Euclid Circular A',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                  decoration: TextDecoration.none,  // Add this line to remove any underline
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              width: 320,
                              height: 56,
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1, color: Colors.white),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        // Replace the Icon with an Image.asset widget
                                        Container(
                                          width: 18,  // Adjust the width and height to match the size of your icon
                                          height: 18,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle, // If you want the image to be circular, use BoxShape.circle
                                          ),
                                          child: Image.asset(
                                            'assets/images/fi_mail.png' , // Replace with your image path
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      controller: emailController,
                                      style: TextStyle(
                                        color: Color(0xFF908A95),
                                        fontSize: 14,
                                        fontFamily: 'Euclid Circular A',
                                        fontWeight: FontWeight.w400,
                                        height: 1.50,
                                        decoration: TextDecoration.none,
                                      ),
                                      decoration: InputDecoration(
                                        hintText: 'Myemail@mail.com',
                                        hintStyle: TextStyle(
                                          color: Color(0xFF908A95),
                                          fontSize: 14,
                                          fontFamily: 'Euclid Circular A',
                                          fontWeight: FontWeight.w400,
                                          height: 1.50,
                                        ),
                                        border: InputBorder.none,  // Removes the border
                                      ),
                                      // Validator to check if email format is valid
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter an email';
                                        }
                                        // Regular expression for email validation
                                        final emailRegex = RegExp(
                                          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                                        );
                                        if (!emailRegex.hasMatch(value)) {
                                          return 'Please enter a valid email';
                                        }
                                        return null;  // No error
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 21,
                top: 444,
                right: 10,
                child: Container(
                  width: 348,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFF334155),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'OR',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF64748B),
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                          decoration: TextDecoration.none,  // Add this line to remove any underline
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFF334155),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 5,
                top: 505,
                right: 0,
                child: Align(
                  alignment: Alignment.center, // Centers the entire Column inside the Positioned widget
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,  // Center the buttons horizontally
                    children: [
                      // Apple button
                      Container(
                        width: 350,
                        height: 56,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 350,
                                height: 56,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 64.22,
                              right: 30,
                              top: 15,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,  // Align text and image vertically centered
                                  children: [
                                    Container(
                                      width: 25.69,
                                      height: 24,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Image.asset(
                                        'assets/images/apple.png', // Replace with your image path
                                        width: 25.69,
                                        height: 24,
                                      ),
                                    ),
                                    SizedBox(width: 8),  // Adds space between the image and the text
                                    Text(
                                      'Continue with Apple',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Euclid Circular A',
                                        fontWeight: FontWeight.w600,
                                        height: 1.40,
                                        decoration: TextDecoration.none,  // Add this line to remove any underline
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 16), // Adds space between the buttons

                      // Google button (updated and added)
                      Container(
                        width: 350,
                        height: 56,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 350,
                                height: 56,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 71.71,
                              right: 30,
                              top: 15,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,  // Align text and image vertically centered
                                  children: [
                                    Container(
                                      width: 25.69,
                                      height: 24,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Image.asset(
                                        'assets/images/google.png', // Replace with your image path
                                        width: 25.69,
                                        height: 24,
                                      ),
                                    ),
                                    SizedBox(width: 8),  // Adds space between the image and the text
                                    Text(
                                      'Continue with Google',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Euclid Circular A',
                                        fontWeight: FontWeight.w600,
                                        height: 1.40,
                                        decoration: TextDecoration.none,  // Add this line to remove any underline
                                      ),
                                    ),
                                  ],
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
              Positioned(
                left: 74,
                top: 705,
                child: SizedBox(
                  width: 241,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an account?',
                          style: TextStyle(
                            color: Color(0xFFF8FAFC),
                            fontSize: 14,
                            fontFamily: 'Euclid Circular A',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            decoration: TextDecoration.none,  // Add this line to remove any underline
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Color(0xFFF8FAFC),
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                            decoration: TextDecoration.none,  // Add this line to remove any underline
                          ),
                        ),
                        TextSpan(
                          text: 'Sign',
                          style: TextStyle(
                            color: Color(0xFF8E44BE),
                            fontSize: 14,
                            fontFamily: 'Euclid Circular A',
                            fontWeight: FontWeight.w700,
                            height: 1.50,
                            decoration: TextDecoration.none,  // Add this line to remove any underline
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Color(0xFF8E44BE),
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w700,
                            height: 1.50,
                            decoration: TextDecoration.none,  // Add this line to remove any underline
                          ),
                        ),
                        TextSpan(
                          text: 'In',
                          style: TextStyle(
                            color: Color(0xFF8E44BE),
                            fontSize: 14,
                            fontFamily: 'Euclid Circular A',
                            fontWeight: FontWeight.w700,
                            height: 1.50,
                            decoration: TextDecoration.none,  // Add this line to remove any underline
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 348, // Keep the vertical position as it is
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PasswordState(), // Replace NewPage with your desired page
                            ),
                          );
                          // Add your onTap logic here
                        },
                        child: Center(
                          child: Text(
                            'Continue',
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
        )

      ],
        )
        )
        )
    );
  }
}

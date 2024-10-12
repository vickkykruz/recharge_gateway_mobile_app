import 'package:flutter/material.dart';
import 'onBoarding/onbording_veiw_screen.dart';
import '../Components/color.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

   @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  void initState() {
    super.initState();

    // Delay of 45 seconds before redirecting to the SignInScreen
    Future.delayed(const Duration(seconds: 20), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingView()),
      );
    });
  }


  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      // extendBodyBehindAppBar: true,
      body: Stack(
        children: [

          // Set the logo Image and the Brand Name
          SafeArea(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min, // Center the content vertically
		children: [
		  Image.asset(
		    'assets/images/logo.png',
		    width: 200,
		    height: 200,
		  ),
                 
		],
              ),
            ),
          ), // SafeArea

        ]
      ) // Stack
    ); // Scaffold
  }
}

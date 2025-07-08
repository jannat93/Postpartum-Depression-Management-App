import 'package:flutter/material.dart';
import 'package:maamoyee_app/main.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Logo
                Image.asset('assets/logo.png', height: screenHeight * 0.25),
                const SizedBox(height: 20),

                // Welcome Text
                Text(
                  'Welcome to...',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18, color: kMutedTextColor),
                ),
                Text(
                  'Maamoyee',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 40),

                // Login as Patient User Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    foregroundColor: Colors.white,
                    minimumSize: Size(screenWidth * 0.8, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(color: Colors.blueAccent, width: 2.5) // Blueish glow/border
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/patientLogin');
                  },
                  child: const Text('Login as Patient User'),
                ),
                const SizedBox(height: 20),

                // Are You a Doctor? Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor.withOpacity(0.9),
                    foregroundColor: Colors.white,
                    minimumSize: Size(screenWidth * 0.8, 50),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/doctorLogin');
                  },
                  child: const Text('Are You a Doctor?'),
                ),
                const SizedBox(height: 30),

                Text(
                  'Login to continue...',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: kMutedTextColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
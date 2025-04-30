import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Assuming a white background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Replace with your actual logo image
            Image.asset(
              '"E:CapstoneLEAKPEEK-03.png"', // logo image in the assets folder
              height: 150, // Adjust height as needed
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/signup',
                ); // Navigate to the Sign Up screen
                print("Continue button pressed");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple, // Match your UI color
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text(
                'CONTINUE',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

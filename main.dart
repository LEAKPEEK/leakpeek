import 'package:flutter/material.dart';
import 'dashboard_screen.dart'; // This is  navigation drawer
import 'email_verification_screen.dart';
import 'home_screen.dart'; // This is breach check screen
import 'initial_screen.dart';
import 'login_screen.dart';
import 'otp_input_screen.dart';
import 'register_screen.dart';
import 'sign_up_screen.dart';
import 'success_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LeakPeak',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/', // Set the initial screen
      routes: {
        '/': (context) => const InitialScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/email_verification': (context) => const EmailVerificationScreen(),
        '/otp_input': (context) => const OtpInputScreen(),
        '/success': (context) => const SuccessScreen(),
        '/home': (context) => const HomeScreen(), // breach check screen
        '/dashboard': (context) => const DashboardScreen(), // navigation drawer
      },
    );
  }
}

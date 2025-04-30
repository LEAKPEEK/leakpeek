import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white70),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          '', // Keep the title empty to center the back button visually
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Email Icon
              const Icon(
                Icons.mail_outline,
                size: 80,
                color: Colors.purple,
              ),
              const SizedBox(height: 30),

              // Instructions Text
              const Text(
                'Enter Your Email Address',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'We will send you a verification code',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),

              // Email Address TextField
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'EMAIL ADDRESS',
                  labelStyle: const TextStyle(color: Colors.white70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.purple),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.white30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.purple),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // reCAPTCHA Placeholder
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.white30),
                ),
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: false, // Placeholder for reCAPTCHA state
                      onChanged: (bool? value) {
                        // TODO: Implement reCAPTCHA verification
                      },
                      activeColor: Colors.purple,
                      checkColor: Colors.white,
                    ),
                    const Text(
                      'I\'m not a robot',
                      style: TextStyle(color: Colors.white70),
                    ),
                    const Spacer(),
                    // Placeholder for reCAPTCHA logo
                    const Text(
                      'reCAPTCHA',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Verify Button
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement email verification logic (send code to backend)
                  print('Verify button pressed with email: ${_emailController.text}');
                  // After sending the code, you might navigate to the OTP input screen
                  // Navigator.pushNamed(context, '/otp_input_screen');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text(
                  'VERIFY',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

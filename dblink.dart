import 'dart:convert';
import 'package:http/http.dart' as http;

class DBLProvider {
  // IMPORTANT: Replace with the actual base URL of your deployed API
  final String _baseUrl = "https://5k29z4nk-5000.inc1.devtunnels.ms";

  Future<Map<String, dynamic>> login(String email, String password) async {
    final Uri url = Uri.parse('$_baseUrl/user/login');
    final Map<String, String> loginData = {
      "email": email,
      "password": password,
    };
    final String jsonBody = jsonEncode(loginData);

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonBody,
      );

      final decodedResponse = jsonDecode(response.body);
      return decodedResponse;
    } catch (e) {
      print("Login error: $e");
      return {'status': 'error', 'message': 'Failed to connect to the server'};
    }
  }

  Future<Map<String, dynamic>> register(
    String email,
    String password,
    String mobileNumber,
  ) async {
    final Uri url = Uri.parse(
      '$_baseUrl/user/register',
    ); // Adjust endpoint if needed
    final Map<String, String> registerData = {
      "email": email,
      "password": password,
      "mobileNumber": mobileNumber, // Include mobile number
    };
    final String jsonBody = jsonEncode(registerData);

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonBody,
      );

      final decodedResponse = jsonDecode(response.body);
      return decodedResponse;
    } catch (e) {
      print("Registration error: $e");
      return {'status': 'error', 'message': 'Failed to connect to the server'};
    }
  }

  Future<Map<String, dynamic>> sendVerificationCode(String email) async {
    final Uri url = Uri.parse(
      '$_baseUrl/user/send-verification-code',
    ); // Adjust endpoint
    final Map<String, String> body = {"email": email};
    final String jsonBody = jsonEncode(body);

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonBody,
      );
      final decodedResponse = jsonDecode(response.body);
      return decodedResponse;
    } catch (e) {
      print("Send verification code error: $e");
      return {'status': 'error', 'message': 'Failed to send verification code'};
    }
  }

  Future<Map<String, dynamic>> verifyEmail(String email, String otp) async {
    final Uri url = Uri.parse('$_baseUrl/user/verify-email'); // Adjust endpoint
    final Map<String, String> body = {"email": email, "otp": otp};
    final String jsonBody = jsonEncode(body);

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonBody,
      );
      final decodedResponse = jsonDecode(response.body);
      return decodedResponse;
    } catch (e) {
      print("Verify email error: $e");
      return {'status': 'error', 'message': 'Failed to verify email'};
    }
  }

  Future<Map<String, dynamic>> checkBreach(String query) async {
    final Uri url = Uri.parse('$_baseUrl/api/check-breach'); // Adjust endpoint
    final Map<String, String> body = {"query": query};
    final String jsonBody = jsonEncode(body);

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonBody,
      );
      final decodedResponse = jsonDecode(response.body);
      return decodedResponse;
    } catch (e) {
      print("Breach check error: $e");
      return {'status': 'error', 'message': 'Failed to check for breaches'};
    }
  }

  // You can add more API interaction methods here
}

import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.purple,
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFFB388FF).withOpacity(0.8), // Light purple background
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple.shade700,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.purple,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'USERNAME', // Replace with actual username
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'abc@example.com', // Replace with actual email
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.white70),
              title: const Text('Home', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.pushReplacementNamed(context, '/home'); // Navigate to Home Screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.security, color: Colors.white70),
              title: const Text('Account Security', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // TODO: Navigate to Account Security screen
                print('Account Security tapped');
              },
            ),
            ListTile(
              leading: const Icon(Icons.history, color: Colors.white70),
              title: const Text('Breach History', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // TODO: Navigate to Breach History screen
                print('Breach History tapped');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.white70),
              title: const Text('Personal Information', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // TODO: Navigate to Personal Information screen
                print('Personal Information tapped');
              },
            ),
            const Spacer(), // Pushes the Logout button to the bottom
            const Divider(color: Colors.white30),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.white70),
              title: const Text('Logout', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.pushReplacementNamed(context, '/login'); // Navigate to Login Screen
                // TODO: Implement logout logic (clear session, tokens, etc.)
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Welcome to your Dashboard!',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      backgroundColor: const Color(0xFF1E1E1E), // Dark background for the main screen
    );
  }
}

import 'package:flutter/material.dart';
import 'home_page.dart'; // Import your home page file

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const HomePage()), // Redirect to home page
        );
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings',
            style:
                TextStyle(color: Colors.white), // Set title text color to white
          ),
          backgroundColor: Colors.deepPurple,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Colors.white), // Set back icon color to white
            onPressed: () {
              // Navigate to settings screen
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
              // Navigator.pop(context); // Navigate back to the home page
            },
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionHeader('Account Settings'),
              _buildSettingItem(
                title: 'Profile',
                icon: Icons.person,
                onTap: () {
                  // Navigate to profile settings
                },
              ),
              _buildSettingItem(
                title: 'Security',
                icon: Icons.security,
                onTap: () {
                  // Navigate to security settings
                },
              ),
              Divider(color: Colors.grey),
              _buildSectionHeader('App Settings'),
              _buildSettingItem(
                title: 'Notifications',
                icon: Icons.notifications,
                onTap: () {
                  // Navigate to notification settings
                },
              ),
              _buildSettingItem(
                title: 'Theme',
                icon: Icons.color_lens,
                onTap: () {
                  // Navigate to theme settings
                },
              ),
              _buildSettingItem(
                title: 'Language',
                icon: Icons.language,
                onTap: () {
                  // Navigate to language settings
                },
              ),
              _buildSettingItem(
                title: 'About',
                icon: Icons.info,
                onTap: () {
                  // Navigate to about page
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget _buildSettingItem(
      {required String title,
      required IconData icon,
      required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepPurple),
      title: Text(title),
      onTap: onTap,
    );
  }
}

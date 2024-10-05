import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';
import 'theme.dart'; // Import theme.dart for theme-based image

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dark/Light Mode Switch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              themeProvider.isDarkMode ? 'Dark Mode' : 'Light Mode',
              style: const TextStyle(fontSize: 24),
            ),

            const SizedBox(height: 20),
            // Add the image here, which changes based on the theme
            Image.asset(
              AppThemes.getImage(context), // Dynamically select the image
              width: 200, // Optional: Set the width of the image
              height: 200, // Optional: Set the height of the image
            ),
            const SizedBox(height: 20),
            Switch(
              value: themeProvider.isDarkMode,
              onChanged: (value) {
                themeProvider.toggleTheme(value);
              },
              activeTrackColor: Colors.grey,
              activeColor: Colors.white,
              inactiveTrackColor: Colors.grey[300],
              inactiveThumbColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

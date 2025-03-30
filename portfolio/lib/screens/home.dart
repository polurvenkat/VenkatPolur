import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Venkatmahesh Polur'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Add navigation logic here
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Hero Section with background image
              Container(
                width: double.infinity,
                height: 600,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('/IMG_4676.jpg'), // Place your image here
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Color.fromRGBO(
                        0,
                        128,
                        128,
                        0.5,
                      ), // Teal color with 50% transparency
                      BlendMode.darken,
                    ), // Darken for text visibility
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Name and Tagline
                    AnimatedOpacity(
                      duration: Duration(seconds: 1),
                      opacity: 1.0,
                      child: Text(
                        'Hi, I’m Venkatmahesh',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    AnimatedOpacity(
                      duration: Duration(seconds: 1),
                      opacity: 1.0,
                      child: Text(
                        'Engineering Leader | Architect | Mentor',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.teal[200], // Light contrast
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 40),

                    // Call to Action Buttons with smooth hover effect
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildButton(
                          context,
                          'About Me',
                          '/about',
                          Colors.teal[600]!,
                        ),
                        SizedBox(width: 20),
                        _buildButton(
                          context,
                          'My Work',
                          '/work',
                          Colors.teal[400]!,
                        ),
                        SizedBox(width: 20),
                        _buildButton(
                          context,
                          'Articles',
                          '/articles',
                          Colors.teal[300]!,
                        ),
                        SizedBox(width: 20),
                        _buildButton(
                          context,
                          'Contact',
                          '/contact',
                          Colors.teal[500]!,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Footer Section with smooth animation
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Made with ❤️ in Flutter | 2025',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.teal[300],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Button Helper Function with animated effects
  Widget _buildButton(
    BuildContext context,
    String label,
    String route,
    Color color,
  ) {
    return ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, route),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        textStyle: TextStyle(fontSize: 18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            30,
          ), // Rounded corners for a modern look
        ),
        elevation: 8,
        shadowColor: Colors.black.withOpacity(0.3),
      ),
      child: Text(label),
    );
  }
}

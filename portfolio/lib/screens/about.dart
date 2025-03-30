import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
        backgroundColor: Colors.teal[700],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Section with image and text
            Container(
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('/IMG_4676.jpg'), // Your image
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.teal.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Hi, I’m Venkatmahesh',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Engineering Leader | Architect | Mentor',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.teal[200],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  // Call-to-Action Buttons (horizontal)
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
            SizedBox(height: 20),
            // Title Section
            Text(
              'About Venkatmahesh',
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(color: Colors.teal[800]),
            ),
            SizedBox(height: 20),
            // Two-column layout (Text and Image)
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'I am a technology leader with over 20 years of experience in the industry...',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.teal[600],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'I specialize in architectural design, leadership, and strategic decision-making.',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.teal[600],
                        ),
                      ),
                      SizedBox(height: 20),
                      // Skills/Technologies
                      Text(
                        'Key Skills:',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.teal[800],
                        ),
                      ),
                      SizedBox(height: 10),
                      Wrap(
                        spacing: 10,
                        children: [
                          Chip(label: Text('GraphQL')),
                          Chip(label: Text('.NET')),
                          Chip(label: Text('Azure')),
                          Chip(label: Text('Kafka')),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                // Right Column: Image (Professional Photo)
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('/IMG_4676.jpg', fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ],
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 8,
        shadowColor: Colors.black.withOpacity(0.3),
      ),
      child: Text(label),
    );
  }
}

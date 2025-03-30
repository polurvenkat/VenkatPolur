import 'package:flutter/material.dart';

class WorkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Work'), backgroundColor: Colors.teal),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // 2 columns for the grid
          childAspectRatio: 1.5, // Aspect ratio for each project card
          children: [
            // Project 1
            _buildProjectCard(
              context,
              'Project Name',
              'Short description of the project goes here.',
              'assets/project-image.png',
            ),
            // Project 2
            _buildProjectCard(
              context,
              'Another Project',
              'This project focused on... technologies used...',
              'assets/project-image.png',
            ),
            // Add more projects here
          ],
        ),
      ),
    );
  }

  Widget _buildProjectCard(BuildContext context, String title, String description, String imagePath) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(height: 5),
                  Text(description, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
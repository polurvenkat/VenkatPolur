import 'package:flutter/material.dart';

class ArticlesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Articles'), backgroundColor: Colors.teal),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Article 1
            _buildArticleCard(
              context,
              'Article Title',
              'This is a short excerpt from the article...',
            ),
            // Article 2
            _buildArticleCard(
              context,
              'Another Article',
              'In this article, we discuss...',
            ),
            // More articles
          ],
        ),
      ),
    );
  }

  Widget _buildArticleCard(BuildContext context, String title, String excerpt) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.headlineSmall),
            SizedBox(height: 10),
            Text(excerpt, style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to the full article
              },
              child: Text('Read More'),
            ),
          ],
        ),
      ),
    );
  }
}

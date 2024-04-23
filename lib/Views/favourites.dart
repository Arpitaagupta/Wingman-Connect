import 'package:flutter/material.dart';
import 'package:project/Views/home_page.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorites',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
        leading: GestureDetector(
          onTap: () {
            navigateToHomePage(context); // Navigate back to the home page
          },
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed:
                null, // Set onPressed to null to disable the default behavior
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NGOCard(
              name: 'Prerna Samajik Sanstha',
              image: 'assets/PRERNA_SAMAJIK_SANSTHA_NGO.png',
              description:
                  'Prerna Samajik Sanstha in Supela,Durg listed under NGOS in Durg. Rated 3.0 based on 1 Customer Reviews and Ratings with 1 Photos',
            ),
            SizedBox(height: 20.0),
            NGOCard(
              name: 'Unique Task Foundation',
              image: 'assets/utf_ngo.png',
              description:
                  'Unique Task Foundation is an nonprofit organization founded on 17th July 2020 Registration Under section 8 company. The Section 8 company is registered under the central government scheme under the Ministry of Corporate Affairs. The Section 8 Companies are governed under Companies Act 2013.',
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add logic to add more favorites
                  },
                  child: Text('Add More Favorites'),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Add logic to remove/delete favorites
                  },
                  child: Text('Delete Favorites'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NGOCard extends StatelessWidget {
  final String name;
  final String image;
  final String description;

  NGOCard({
    required this.name,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
            child: Image.asset(
              image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//old

// This is where you handle the navigation
void navigateToHomePage(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
        builder: (context) =>
            HomePage()), // Replace the current route with the home page
  );
}

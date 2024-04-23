import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme:
            IconThemeData(color: Colors.white), // Set back icon color to white
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/about_us.png',
                height: 400,
                width: 400,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 5.0), // Reduce top space
            Text(
              'At the Wingman Foundation, we believe in the transformative power of collective action and compassionate initiatives. Our NGO stands as a testament to the unwavering commitment to building sustainable communities that thrive on inclusivity, education, healthcare, environmental stewardship, women empowerment, girl child education and animal welfare. We strive to be the wind beneath the wings of communities, working hand in hand to overcome challenges and create a brighter future. Our journey is one of collaboration, empowerment, and innovative solutions that address the root causes of societal issues.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'As we have donors from all over India, currently we are working from the autonomous college, Bhilai Institute of Technology, Durg, Chhattisgarh. Our main focus is on women and child empowerment, as by supporting girls\' education, communities, nations, and the world are transformed. Girls who acquire an education are more likely to lead healthy, fulfilling lives and are less likely to marry early. They create better futures for themselves and their family, earn higher wages, and take part in decisions that most directly affect them.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'The primary objective of our website is to serve as a digital gateway that effectively communicates our organization\'s mission and vision. Through clear and compelling messaging, we aim to articulate the values that drive our initiatives and underscore the impact we aspire to create within communities. By providing a comprehensive overview of our mission, visitors to the website will gain insight into the fundamental principles guiding our work.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

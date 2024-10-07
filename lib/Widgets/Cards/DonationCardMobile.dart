import 'package:flutter/material.dart';

class DonationCardMobile extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double height;
  final double width;

  

  DonationCardMobile({
    required this.image,
    required this.title,
    required this.description,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(10.0),
),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: width*0.9,
        height: height*0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: width*0.1,
                backgroundImage: AssetImage(image),
              ),
            ),
            SizedBox(height: height*0.01),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: (height/width)*15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: (height/width)*8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

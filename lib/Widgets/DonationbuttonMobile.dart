import 'package:flutter/material.dart';

import '../Donation.dart';

class DonationButtonMobile extends StatelessWidget {
  double screenHeight;
  double screenWidth;

  DonationButtonMobile({required this.screenHeight, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      height: screenHeight * 0.5,
      width: screenWidth * 0.8,
      child: Row(
        children: [
          Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/donation.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.7),
                      blurRadius: 80,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "(مَّثَلُ الَّذِينَ يُنفِقُونَ أَمْوَالَهُمْ فِي سَبِيلِ اللَّهِ كَمَثَلِ حَبَّةٍ أَنبَتَتْ سَبْعَ سَنَابِلَ فِي كُلِّ سُنبُلَةٍ مِّائَةُ حَبَّةٍ ۗوَاللَّهُ يُضَاعِفُ لِمَن يَشَاءُ ۗ وَاللَّهُ وَاسِعٌ عَلِيمٌ). \n[سورة البقرة، آية: 261]",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: screenHeight*0.1,),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        height: screenHeight * 0.075,
                        hoverElevation: 0.0,
                        color: Colors.red,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Donation(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Donate now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenHeight*0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

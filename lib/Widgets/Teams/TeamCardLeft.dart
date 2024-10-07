import 'package:flutter/material.dart';

class TeamCardLeft extends StatefulWidget {
  double screenWidth;
  double screenHeight;
  String title;
  String description;
  String teamImage;

  TeamCardLeft({required this.teamImage,required this.title,required this.description, required this.screenWidth,required this.screenHeight});

  @override
  State<TeamCardLeft> createState() => _TeamCardLeftState();
}

class _TeamCardLeftState extends State<TeamCardLeft> {
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: widget.screenWidth*0.4,
              height: widget.screenHeight*0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.teamImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: widget.screenWidth*0.04,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: widget.screenWidth*0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: widget.screenWidth*0.4,
                    height: widget.screenHeight*0.075,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:Center(
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: (widget.screenHeight/widget.screenWidth)*70,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: widget.screenHeight*0.025),
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: (widget.screenHeight/widget.screenWidth)*40,),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

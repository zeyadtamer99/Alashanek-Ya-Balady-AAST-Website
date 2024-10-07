import 'package:flutter/material.dart';

class TeamCardRight extends StatefulWidget {
  double screenWidth;
  double screenHeight;
  String title;
  String description;
  String teamImage;

  TeamCardRight({required this.teamImage,required this.title,required this.description, required this.screenWidth,required this.screenHeight});

  @override
  State<TeamCardRight> createState() => _TeamCardRightState();
}

class _TeamCardRightState extends State<TeamCardRight> {
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
        SizedBox(width: widget.screenWidth*0.04,),
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

      ],
    );
  }
}

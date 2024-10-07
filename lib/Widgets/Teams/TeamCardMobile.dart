import 'package:flutter/material.dart';

class TeamCardMobile extends StatefulWidget {
  double screenWidth;
  double screenHeight;
  String title;
  String description;
  String teamImage;

  TeamCardMobile({required this.teamImage,required this.title,required this.description, required this.screenWidth,required this.screenHeight});

  @override
  State<TeamCardMobile> createState() => _TeamCardMobileState();
}

class _TeamCardMobileState extends State<TeamCardMobile> {
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: widget.screenWidth*0.9,
              height: widget.screenHeight*0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.teamImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: widget.screenHeight*0.04,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: widget.screenWidth*0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: widget.screenWidth*0.9,
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
                          fontSize: (widget.screenHeight/widget.screenWidth)*10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: widget.screenHeight*0.025),
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: (widget.screenHeight/widget.screenWidth)*10,),
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

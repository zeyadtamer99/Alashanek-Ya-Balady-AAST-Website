import 'package:flutter/material.dart';

class ShowDataText extends StatefulWidget {
  String mainText;
  String smallText;
  double smallTextsize;
  double mainTextsize;
  double containerHeight;
  double containerWidth;


  ShowDataText({required this.mainText,required this.smallText,required this.smallTextsize,
    required this.mainTextsize,required this.containerHeight,required this.containerWidth});

  @override
  State<ShowDataText> createState() => _ShowDataTextState();
}

class _ShowDataTextState extends State<ShowDataText> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.mainText,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: widget.mainTextsize,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Container(
            height: widget.containerHeight,
            width: widget.containerWidth,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8)),
            child:Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                widget.smallText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: widget.smallTextsize,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

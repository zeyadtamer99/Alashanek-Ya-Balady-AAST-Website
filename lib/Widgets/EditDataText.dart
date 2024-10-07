import 'package:flutter/material.dart';

class EditDataText extends StatefulWidget {
  TextInputType inputType;
  String mainText;
  String hintText;
  double hintTextsize;
  double mainTextsize;
  double containerWidth;
  TextEditingController controller;

  EditDataText(
      {
        required this.inputType,
        required this.controller,
      required this.mainText,
      required this.hintText,
      required this.hintTextsize,
      required this.mainTextsize,
      required this.containerWidth});

  @override
  State<EditDataText> createState() => _EditDataTextState();
}

class _EditDataTextState extends State<EditDataText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.mainText,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: widget.mainTextsize,
              decoration: TextDecoration.none,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: widget.containerWidth,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8)),
                child: Container(
                  width: widget.containerWidth,
                  child: TextField(
                    keyboardType: widget.inputType,
                    controller: widget.controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: widget.hintText,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

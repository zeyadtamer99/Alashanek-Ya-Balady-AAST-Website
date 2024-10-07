import 'package:flutter/material.dart';

class EditDataTextMobile extends StatefulWidget {
  TextInputType inputType;
  String mainText;
  String hintText;
  double hintTextsize;
  double mainTextsize;
  double containerWidth;
  double containerHeight;
  TextEditingController controller;

  EditDataTextMobile(
      {
        required this.inputType,
        required this.controller,
      required this.mainText,
      required this.hintText,
      required this.hintTextsize,
      required this.mainTextsize,
        required this.containerWidth,
        required this.containerHeight});

  @override
  State<EditDataTextMobile> createState() => _EditDataTextMobileState();
}

class _EditDataTextMobileState extends State<EditDataTextMobile> {
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
                height: widget.containerHeight,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8)),
                child: Container(
                  height: widget.containerHeight,
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

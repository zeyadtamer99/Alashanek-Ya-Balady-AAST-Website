import 'package:flutter/material.dart';

import '../../Donation.dart';

class CasesCardMobile extends StatefulWidget {
  final String name;
  final double screenheight;
  final double screenWidth;
  final int age;
  final String info;
  final String pic;

  CasesCardMobile(
      {required this.name,
      required this.screenheight,
      required this.screenWidth,
      required this.age,
      required this.info,
      required this.pic});

  @override
  State<CasesCardMobile> createState() => _CasesCardMobileState();
}

class _CasesCardMobileState extends State<CasesCardMobile> {
  @override
  Widget build(BuildContext context) {
    return Card(
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 5,
      child: Container(
        width: widget.screenWidth * 1,
        height: widget.screenheight * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: (widget.screenheight/widget.screenWidth)*15,
                  ),
                ),
                widget.age > 0 ? Text(widget.age.toString()+" Years old") : Container(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    widget.info,
                    textAlign: TextAlign.center,
                    maxLines: null,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: (widget.screenheight/widget.screenWidth)*7,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: widget.screenWidth*0.4,
                    height: widget.screenheight*0.067,
                    child: FloatingActionButton(
                      shape:const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      backgroundColor: Color.fromARGB(255, 72, 197, 255),
                      hoverColor: Color.fromARGB(255, 44, 111, 255),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Text(
                            'Donate Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: (widget.screenheight/widget.screenWidth)*10,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Donation(),
                          ),
                        );

                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../Donation.dart';

class CasesCard extends StatefulWidget {
  final String name;
  final double screenheight;
  final double screenWidth;
  final int age;
  final String info;
  final String pic;

  CasesCard(
      {required this.name,
      required this.screenheight,
      required this.screenWidth,
      required this.age,
      required this.info,
      required this.pic});

  @override
  State<CasesCard> createState() => _CasesCardState();
}

class _CasesCardState extends State<CasesCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 5,
      child: Container(
        width: widget.screenWidth * 0.8,
        height: widget.screenheight * 0.55,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  widget.age > 0 ? Text(widget.age.toString()+" Years old") : Container(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: widget.screenheight * 0.35,
                    width: widget.screenWidth * 0.2,
                    child: Image.network(widget.pic),
                  ),
                  SizedBox(
                    width: widget.screenWidth * 0.015,
                  ),
                  Expanded(
                    child: Text(
                      widget.info,
                      textAlign: TextAlign.center,
                      maxLines: null,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: widget.screenWidth*0.1,
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
                        const Text(
                            'Donate Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
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

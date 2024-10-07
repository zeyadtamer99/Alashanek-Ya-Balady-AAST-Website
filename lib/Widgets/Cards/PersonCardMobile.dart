import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class PersonCardMobile extends StatefulWidget {
  final String name;
  final double screenheight;
  final double screenWidth;
  final bool isMale;
  final int buildingNum;
  final bool debt;
  final String social;
  final int phone;
  final String street;

  const PersonCardMobile(
      {Key? key,
      required this.screenheight,
      required this.screenWidth,
      required this.name,
      required this.isMale,
      required this.buildingNum,
      required this.street,
      required this.debt,
      required this.social,
      required this.phone})
      : super(key: key);

  @override
  _PersonCardMobileState createState() => _PersonCardMobileState();
}

class _PersonCardMobileState extends State<PersonCardMobile> {
  @override
  Widget build(BuildContext context) {
    String formattedStreet = widget.street.replaceAll("-", " ");
    List<String> streetWords = formattedStreet.split(" ");
    for (int i = 0; i < streetWords.length; i++) {
      streetWords[i] =
          streetWords[i][0].toUpperCase() + streetWords[i].substring(1);
    }
    formattedStreet = streetWords.join(" ");
    return Container(
      width: widget.screenWidth * 0.9,
      height: widget.screenheight * 0.12,
      padding: EdgeInsets.all(6.0),
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                widget.isMale ? Icons.male : Icons.female,
                color: widget.isMale ? Colors.blue : Colors.pink,
                size: (widget.screenWidth / widget.screenheight) * 35,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                        fontSize:
                            (widget.screenWidth / widget.screenheight) * 20,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: (widget.screenWidth / widget.screenheight) * 10,
                  ),
                  Text(
                    widget.name.length > 12
                        ? '${widget.name.substring(0, 11)}...'
                        : widget.name,
                    style: TextStyle(
                        fontSize:
                            (widget.screenWidth / widget.screenheight) * 18,
                        color: Colors.black),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Address",
                    style: TextStyle(
                        fontSize:
                            (widget.screenWidth / widget.screenheight) * 20,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: (widget.screenWidth / widget.screenheight) * 10,
                  ),
                  Text(
                    "${widget.buildingNum} $formattedStreet",
                    style: TextStyle(
                        fontSize:
                            (widget.screenWidth / widget.screenheight) * 18,
                        color: Colors.black),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Debts",
                    style: TextStyle(
                        fontSize:
                            (widget.screenWidth / widget.screenheight) * 20,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: (widget.screenWidth / widget.screenheight) * 5,
                  ),
                  Icon(
                    widget.debt
                        ? Icons.attach_money_outlined
                        : Icons.money_off_csred,
                    color: widget.debt ? Colors.green : Colors.black,
                    size: (widget.screenWidth / widget.screenheight) * 30,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Social Status",
                    style: TextStyle(
                        fontSize:
                            (widget.screenWidth / widget.screenheight) * 20,
                        color: Colors.grey),
                  ),
                  widget.social == 'its Complicated'
                      ? Icon(
                          Icons.sentiment_very_dissatisfied,
                          color: Colors.grey,
                          size: (widget.screenWidth / widget.screenheight) * 30,
                        )
                      : widget.social == 'Married'
                          ? Icon(
                              Icons.sentiment_satisfied,
                              color: Colors.green,
                              size: (widget.screenWidth / widget.screenheight) *
                                  30,
                            )
                          : widget.social == 'Widow'
                              ? Icon(
                                  Icons.sentiment_dissatisfied,
                                  color: Colors.grey,
                                  size: (widget.screenWidth /
                                          widget.screenheight) *
                                      30,
                                )
                              : widget.social == 'Single'
                                  ? Icon(
                                      Icons.sentiment_satisfied_sharp,
                                      color: Colors.green,
                                      size: (widget.screenWidth /
                                              widget.screenheight) *
                                          30,
                                    )
                                  : widget.social == 'Divorced'
                                      ? Icon(
                                          Icons.sentiment_very_dissatisfied,
                                          color: Colors.grey,
                                          size: (widget.screenWidth /
                                                  widget.screenheight) *
                                              30,
                                        )
                                      : Text(
                                          "Not Available",
                                          style: TextStyle(
                                              fontSize: (widget.screenWidth /
                                                      widget.screenheight) *
                                                  20,
                                              color: Colors.black54),
                                        )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.call,
                      color: widget.phone == 0 ? Colors.grey : Colors.green,
                      size: (widget.screenWidth / widget.screenheight) * 35,
                    ),
                    onPressed: () {
                      if (widget.phone != 0) {
                        UrlLauncher.launch("tel://0${widget.phone}");
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;



class PersonCard extends StatefulWidget {
  final String name;
  final double screenheight;
  final double screenWidth;
  final bool isMale;
  final int buildingNum;
  final bool debt;
  final String social;
  final int phone;
  final String street;

  const PersonCard(
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
  _PersonCardState createState() => _PersonCardState();
}

class _PersonCardState extends State<PersonCard> {
  @override
  Widget build(BuildContext context) {
    String formattedStreet = widget.street.replaceAll("-", " ");
    List<String> streetWords = formattedStreet.split(" ");
    for (int i = 0; i < streetWords.length; i++) {
      streetWords[i] = streetWords[i][0].toUpperCase() + streetWords[i].substring(1);
    }
    formattedStreet = streetWords.join(" ");
    return Container(
      width: widget.screenWidth*0.5,
      height: widget.screenheight*0.1,
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
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "${widget.name}",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Address",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "${widget.buildingNum} $formattedStreet",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Debts",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Icon(
                    widget.debt ? Icons.attach_money_outlined : Icons.money_off_csred,
                    color: widget.debt ? Colors.green : Colors.black,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Social Status",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  widget.social == 'its Complicated'
                      ? Icon(Icons.sentiment_very_dissatisfied, color: Colors.grey)
                      : widget.social == 'Married'
                      ? Icon(Icons.sentiment_satisfied, color: Colors.green)
                      : widget.social == 'Widow'
                      ? Icon(Icons.sentiment_dissatisfied, color: Colors.grey)
                      : widget.social == 'Single'
                      ? Icon(Icons.sentiment_satisfied_sharp, color: Colors.green)
                      : widget.social == 'Divorced'
                      ? Icon(Icons.sentiment_very_dissatisfied, color: Colors.grey)
                      : const Text(
                    "Not Available",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  )

                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.call,
                        color: widget.phone==0?Colors.grey:Colors.green),
                    onPressed: () {
                      if(widget.phone!=0){
                        UrlLauncher.launch("tel://0${widget.phone}");
                      }
                    },
                  ),
                ],
              ),            ],
          ),
        ),
      ),
    );
  }
}

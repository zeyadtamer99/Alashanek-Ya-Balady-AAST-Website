import 'package:ayb_database/Widgets/BottomPartMobile.dart';
import 'package:ayb_database/Widgets/showingDataText.dart';
import 'package:ayb_database/people.dart';
import 'package:flutter/material.dart';

import '../EditPerson.dart';
import '../Widgets/BottomPart.dart';

class PersonInfoMobile extends StatefulWidget {
  String street;
  String docId;

  String name;
  String sex;
  int numOfPeople;
  String socialStatus;
  int age;
  int buildingNum;
  int phoneNum;
  int debtPaid;
  int debtAmount;
  String debtType;
  String maxDebtDate;
  List<dynamic> arrayListMedicine = [];
  List<dynamic> arrayListDisease = [];
  List<dynamic> arrayListOperation = [];
  String jobType;
  String kindOfJob;
  int totalMasareef;
  int salary;
  String notes;

  PersonInfoMobile(
      {required this.docId,
      required this.street,
      required this.name,
      required this.sex,
      required this.numOfPeople,
      required this.socialStatus,
      required this.age,
      required this.buildingNum,
      required this.phoneNum,
      required this.debtPaid,
      required this.debtAmount,
      required this.debtType,
      required this.maxDebtDate,
      required this.arrayListMedicine,
      required this.arrayListDisease,
      required this.arrayListOperation,
      required this.jobType,
      required this.kindOfJob,
      required this.totalMasareef,
      required this.salary,
      required this.notes});

  @override
  State<PersonInfoMobile> createState() => _PersonInfoMobileState();
}

class _PersonInfoMobileState extends State<PersonInfoMobile> {
  @override
  Widget build(BuildContext context) {
    String formattedStreet = widget.street.replaceAll("-", " ");
    List<String> streetWords = formattedStreet.split(" ");
    for (int i = 0; i < streetWords.length; i++) {
      streetWords[i] =
          streetWords[i][0].toUpperCase() + streetWords[i].substring(1);
    }
    formattedStreet = streetWords.join(" ");
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight,
      width: screenWidth,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: screenWidth * 0.89,
                    height: screenHeight * 0.8,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(3, 3),
                            blurRadius: 15,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Personal Info",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0,
                                    color: Colors.black),
                              ),
                            ),
                            Divider(
                              color: Colors.red,
                              height: 10.0,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ShowDataText(
                                  mainTextsize:
                                      (screenHeight / screenWidth) * 10,
                                  smallTextsize:
                                      (screenHeight / screenWidth) * 9,
                                  containerWidth: screenWidth * 0.3,
                                  containerHeight: screenHeight * 0.05,
                                  mainText: "Name",
                                  smallText: widget.name,
                                ),
                                ShowDataText(
                                  mainText: "Age",
                                  smallText: widget.age.toString(),
                                  mainTextsize:
                                      (screenHeight / screenWidth) * 10,
                                  smallTextsize:
                                      (screenHeight / screenWidth) * 9,
                                  containerWidth: screenWidth * 0.3,
                                  containerHeight: screenHeight * 0.05,
                                ),
                                ShowDataText(
                                  mainText: "Sex",
                                  smallText: widget.sex,
                                  mainTextsize:
                                      (screenHeight / screenWidth) * 10,
                                  smallTextsize:
                                      (screenHeight / screenWidth) * 9,
                                  containerWidth: screenWidth * 0.3,
                                  containerHeight: screenHeight * 0.05,
                                ),
                                ShowDataText(
                                  mainText: "Social Status",
                                  smallText: widget.socialStatus,
                                  mainTextsize:
                                      (screenHeight / screenWidth) * 10,
                                  smallTextsize:
                                      (screenHeight / screenWidth) * 9,
                                  containerWidth: screenWidth * 0.3,
                                  containerHeight: screenHeight * 0.05,
                                ),
                                ShowDataText(
                                  mainText: "Num of people living",
                                  smallText: widget.numOfPeople.toString(),
                                  mainTextsize:
                                      (screenHeight / screenWidth) * 10,
                                  smallTextsize:
                                      (screenHeight / screenWidth) * 9,
                                  containerWidth: screenWidth * 0.3,
                                  containerHeight: screenHeight * 0.05,
                                ),
                                ShowDataText(
                                  mainText: "Address",
                                  smallText: widget.buildingNum.toString() +
                                      " " +
                                      formattedStreet,
                                  mainTextsize:
                                      (screenHeight / screenWidth) * 10,
                                  smallTextsize:
                                      (screenHeight / screenWidth) * 9,
                                  containerWidth: screenWidth * 0.3,
                                  containerHeight: screenHeight * 0.05,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: screenWidth * 0.89,
                    height: screenHeight * 0.7,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(3, 3),
                            blurRadius: 15,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Debt Info",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0,
                                    color: Colors.black),
                              ),
                            ),
                            Divider(
                              color: Colors.red,
                              height: 10.0,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ShowDataText(
                                  mainText: "Debt Amount",
                                  smallText: widget.debtAmount.toString(),
                                  mainTextsize:
                                      (screenHeight / screenWidth) * 10,
                                  smallTextsize:
                                      (screenHeight / screenWidth) * 9,
                                  containerWidth: screenWidth * 0.3,
                                  containerHeight: screenHeight * 0.05,
                                ),
                                ShowDataText(
                                  mainText: "Debt Paid",
                                  smallText: widget.debtPaid.toString(),
                                  mainTextsize:
                                      (screenHeight / screenWidth) * 10,
                                  smallTextsize:
                                      (screenHeight / screenWidth) * 9,
                                  containerWidth: screenWidth * 0.3,
                                  containerHeight: screenHeight * 0.05,
                                ),
                                ShowDataText(
                                  mainText: "Debt Deadline Day",
                                  smallText: widget.maxDebtDate,
                                  mainTextsize:
                                      (screenHeight / screenWidth) * 10,
                                  smallTextsize:
                                      (screenHeight / screenWidth) * 9,
                                  containerWidth: screenWidth * 0.3,
                                  containerHeight: screenHeight * 0.05,
                                ),
                                ShowDataText(
                                  mainText: "Debt Type",
                                  smallText: widget.debtType,
                                  mainTextsize:
                                      (screenHeight / screenWidth) * 10,
                                  smallTextsize:
                                      (screenHeight / screenWidth) * 9,
                                  containerWidth: screenWidth * 0.3,
                                  containerHeight: screenHeight * 0.05,
                                ),
                                ShowDataText(
                                  mainText: "Debt Amount remaining",
                                  smallText:
                                      (widget.debtAmount - widget.debtPaid)
                                          .toString(),
                                  mainTextsize:
                                      (screenHeight / screenWidth) * 10,
                                  smallTextsize:
                                      (screenHeight / screenWidth) * 9,
                                  containerWidth: screenWidth * 0.3,
                                  containerHeight: screenHeight * 0.05,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: screenWidth * 0.89,
                    height: screenHeight * 0.55,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(3, 3),
                            blurRadius: 15,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Work Info",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0,
                                    color: Colors.black),
                              ),
                            ),
                            Divider(
                              color: Colors.red,
                              height: 10.0,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ShowDataText(
                                  mainText: "Job",
                                  smallText: widget.kindOfJob,
                                  mainTextsize:
                                  (screenHeight / screenWidth) * 10,
                                  smallTextsize:
                                  (screenHeight / screenWidth) * 9,
                                  containerWidth: screenWidth * 0.3,
                                  containerHeight: screenHeight * 0.05,
                                ),
                                ShowDataText(
                                  mainText: "Job Type",
                                  smallText: widget.jobType,
                                  mainTextsize:
                                  (screenHeight / screenWidth) * 10,
                                  smallTextsize:
                                  (screenHeight / screenWidth) * 9,
                                  containerWidth: screenWidth * 0.3,
                                  containerHeight: screenHeight * 0.05,
                                ),
                                ShowDataText(
                                  mainText: "Income Amount",
                                  smallText: widget.salary.toString(),
                                  mainTextsize:
                                  (screenHeight / screenWidth) * 10,
                                  smallTextsize:
                                  (screenHeight / screenWidth) * 9,
                                  containerWidth: screenWidth * 0.3,
                                  containerHeight: screenHeight * 0.05,
                                ),
                                ShowDataText(
                                  mainText: "Total Masareef",
                                  smallText: widget.totalMasareef.toString(),
                                  mainTextsize:
                                  (screenHeight / screenWidth) * 10,
                                  smallTextsize:
                                  (screenHeight / screenWidth) * 9,
                                  containerWidth: screenWidth * 0.3,
                                  containerHeight: screenHeight * 0.05,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //Work Info
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: screenWidth * 0.89,
                    height: screenHeight * 0.44,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(3, 3),
                            blurRadius: 15,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Medical Info",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0,
                                    color: Colors.black),
                              ),
                            ),
                            Divider(
                              color: Colors.red,
                              height: 10.0,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: screenHeight * 0.34,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Medicine: ',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.black45,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.01,
                                    ),
                                    Material(
                                      child: Container(
                                        height: screenHeight * 0.27,
                                        width: screenWidth * 0.25,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: List.generate(
                                                widget.arrayListMedicine.length,
                                                (index) {
                                              return ListTile(
                                                title: Text(widget
                                                    .arrayListMedicine[index]),
                                              );
                                            }),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: screenHeight * 0.34,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Disease: ',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.black45,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.01,
                                    ),
                                    Material(
                                      child: Container(
                                        height: screenHeight * 0.27,
                                        width: screenWidth * 0.25,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: List.generate(
                                                widget.arrayListDisease.length,
                                                (index) {
                                              return ListTile(
                                                title: Text(widget
                                                    .arrayListDisease[index]),
                                              );
                                            }),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: screenHeight * 0.34,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Operation: ',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.black45,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.01,
                                    ),
                                    Material(
                                      child: Container(
                                        height: screenHeight * 0.27,
                                        width: screenWidth * 0.25,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: List.generate(
                                                widget.arrayListOperation
                                                    .length, (index) {
                                              return ListTile(
                                                title: Text(widget
                                                    .arrayListOperation[index]),
                                              );
                                            }),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //Medical
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: screenWidth * 0.5,
                height: screenHeight * 0.05,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditPerson(
                              docId: widget.docId,
                              street: widget.street,
                              name: widget.name,
                              sex: widget.sex,
                              numOfPeople: widget.numOfPeople,
                              socialStatus: widget.socialStatus,
                              age: widget.age,
                              buildingNum: widget.buildingNum,
                              phoneNum: widget.phoneNum,
                              debtPaid: widget.debtPaid,
                              debtAmount: widget.debtAmount,
                              debtType: widget.debtType,
                              maxDebtDate: widget.maxDebtDate,
                              arrayListMedicine: widget.arrayListMedicine,
                              arrayListDisease: widget.arrayListDisease,
                              arrayListOperation: widget.arrayListOperation,
                              jobType: widget.jobType,
                              kindOfJob: widget.kindOfJob,
                              totalMasareef: widget.totalMasareef,
                              salary: widget.salary,
                              notes: widget.notes),
                        ));
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.edit_note_sharp),
                      SizedBox(width: 12),
                      Text("Edit Person"),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            BottomPartMobile(
              screenHeight: screenHeight,
            ),
          ],
        ),
      ),
    );
  }
}

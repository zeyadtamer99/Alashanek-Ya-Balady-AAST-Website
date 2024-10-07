import 'dart:math';

import 'package:ayb_database/Widgets/BottomPart.dart';
import 'package:ayb_database/Widgets/showingDataText.dart';
import 'package:ayb_database/people.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Widgets/EditDataText.dart';
import 'PeopleBolaqMobile.dart';

class EditPeopleMobile extends StatefulWidget {
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

  EditPeopleMobile(
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
  State<EditPeopleMobile> createState() => _EditPeopleMobileState();
}

class _EditPeopleMobileState extends State<EditPeopleMobile> {
late String dropdownValue;

  late  String dropdownWorkValue;
    late String dropdowndebtTypeValue; 
late TextEditingController _debtDeadlineDayController;
 @override
  void initState() {
    super.initState();    
    dropdownValue = 'None';
    dropdownWorkValue = 'None';
    dropdowndebtTypeValue = 'None';
    _debtDeadlineDayController = TextEditingController(text: widget.maxDebtDate);
  }

  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;

    TextEditingController _nameController = TextEditingController(text: widget.name);
    TextEditingController _ageController = TextEditingController(text: widget.age.toString());
    TextEditingController _phoneNumberController = TextEditingController(text: widget.phoneNum.toString());
    TextEditingController _numOfPeopleLivingController = TextEditingController(text: widget.numOfPeople.toString());
    TextEditingController _buildingNumController = TextEditingController(text: widget.buildingNum.toString());
    TextEditingController _debtPaidController = TextEditingController(text: widget.debtPaid.toString());
    TextEditingController _debtAmountController = TextEditingController(text: widget.debtAmount.toString());
    TextEditingController _totalMasareefController = TextEditingController(text: widget.totalMasareef.toString());
    TextEditingController _salaryController = TextEditingController(text: widget.salary.toString());
    TextEditingController _jobTypeController = TextEditingController(text: widget.jobType);
    TextEditingController _notesController = TextEditingController(text: widget.notes);
    TextEditingController _textControllerMedicine = TextEditingController();
    TextEditingController _textControllerOperation = TextEditingController();
    TextEditingController _textControllerDisease = TextEditingController();
    TextEditingController diseaseController = TextEditingController();
    TextEditingController medicineController = TextEditingController();
    TextEditingController operationController = TextEditingController();



    List<String> listSocialStatus = <String>[
      'Married',
      'Single',
      'Widow',
      'Divorced',
      'its Complicated',
      'None'
    ];


    List<String> workList = <String>[
      'Monthly',
      'Weekly',
      'Daily',
      '3ala allah',
      'None'
    ];

    List<String> debtTypeList = <String>[
      'Kembiyalat',
      'Loan from bank',
      'Loan from ass.',
      'Welad el Halal',
      'None'
    ];

    List<Widget> icons = <Widget>[
      Icon(Icons.male),
      Icon(Icons.female),
    ];
    final List<bool> _selectedWeather = <bool>[false, false];
    int sexIndex = 0;

    String formattedStreet = widget.street.replaceAll("-", " ");
    List<String> streetWords = formattedStreet.split(" ");
    for (int i = 0; i < streetWords.length; i++) {
      streetWords[i] =
          streetWords[i][0].toUpperCase() + streetWords[i].substring(1);
    }
    formattedStreet = streetWords.join(" ");
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => People(streetName: widget.street),
          ),
        );
        return false;
      },
      child: Container(
        height: screenHeight,
        width: screenWidth,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: screenHeight*0.02,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth * 0.1,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Personal Info",
                          style: TextStyle(color: Colors.black, fontSize: 28),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: screenWidth * 0.1,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    //Title
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Container(
                      width: screenWidth * 0.75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 6),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Name: ',
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 14),
                                    ),
                                    Container(
                                      width: screenWidth * 0.2,
                                      child: TextField(
                                        keyboardType: TextInputType.text,
                                        controller: _nameController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter A Name',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: screenWidth * 0.05),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Age: ',
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 14),
                                    ),
                                    Container(
                                      width: screenWidth * 0.125,
                                      child: TextField(
                                        keyboardType: TextInputType.number,
                                        controller: _ageController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter the Age',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: screenWidth * 0.05),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Phone Number: ',
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 14),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: screenWidth * 0.15,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            controller: _phoneNumberController,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: 'Enter phone number',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //Name age phone number
                          Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Building Number: ',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14),
                                      ),
                                      Container(
                                        width: screenWidth * 0.1,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          controller: _buildingNumController,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText:
                                                'Enter the Building number',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: screenWidth * 0.05),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Num of People',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14),
                                      ),
                                      Container(
                                        width: screenWidth * 0.1,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          controller:
                                              _numOfPeopleLivingController,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText:
                                                'Enter Num Of People Living',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: screenWidth * 0.05),
                                  Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Social Status: ',
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 14),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(12),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black26,
                                                offset: Offset(0, 6),
                                                blurRadius: 6,
                                              ),
                                            ],
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 12,
                                                right: 12,
                                                top: 4,
                                                bottom: 4),
                                            child: DropdownButton<String>(
                                              value: dropdownValue,
                                              icon: const Icon(
                                                  Icons.arrow_downward),
                                              elevation: 16,
                                              style: const TextStyle(
                                                  color: Colors.black),
                                              underline: Container(
                                                height: 2,
                                                color: Colors.red[300],
                                              ),
                                              onChanged: (String? value) {
                                                setState(() {
                                                  dropdownValue = value!;
                                                });
                                              },
                                              items: listSocialStatus.map<
                                                  DropdownMenuItem<String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                            ),
                                          ),
                                        ),
                                      ]),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Personal
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth * 0.1,
                          height: 2,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Text(
                          "Work Info",
                          style: TextStyle(color: Colors.black, fontSize: 28),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: screenWidth * 0.1,
                          height: 2,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    //Title
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Container(
                      width: screenWidth * 0.75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 6),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Job: ',
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 14),
                                    ),
                                    Container(
                                      width: screenWidth * 0.2,
                                      child: TextField(
                                        keyboardType: TextInputType.text,
                                        controller: _jobTypeController,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'eg.(Nagar,Sabak)',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: screenWidth * 0.05),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Total Masareef: ',
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 14),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: screenWidth * 0.15,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            controller:
                                                _totalMasareefController,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: 'eg.(3500)',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: screenWidth * 0.05),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Income amount: ',
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 14),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: screenWidth * 0.15,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            controller: _salaryController,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: 'eg.(2500)',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: screenWidth * 0.05),
                                Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Income Type: ',
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 14),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(12),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black26,
                                                offset: Offset(0, 6),
                                                blurRadius: 6,
                                              ),
                                            ],
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 12,
                                                right: 12,
                                                top: 4,
                                                bottom: 4),
                                            child: DropdownButton<String>(
                                              value: dropdownWorkValue,
                                              icon: const Icon(
                                                  Icons.arrow_downward),
                                              elevation: 16,
                                              style: const TextStyle(
                                                  color: Colors.black),
                                              underline: Container(
                                                height: 2,
                                                color: Colors.red[300],
                                              ),
                                              onChanged: (String? value) {
                                                setState(() {
                                                  dropdownWorkValue = value!;
                                                });
                                              },
                                              items: workList.map<
                                                  DropdownMenuItem<String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                            ),
                                          ),
                                        ),
                                      ]),
                                 
                              ],
                            ),
                          ),
                          //Name age phone number
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //work
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: screenWidth * 0.75,
                  height: screenHeight * 0.50,
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
                          height: screenHeight * 0.4,
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
                                    height: screenHeight * 0.2,
                                    width: screenWidth * 0.125,
                                    child: ListView.builder(
                                      itemCount:
                                      widget.arrayListMedicine.length,
                                      itemBuilder: (BuildContext context,
                                          int index) {
                                        return Dismissible(
                                          key: Key(widget
                                              .arrayListMedicine[index]),
                                          child: ListTile(
                                            title: Text(widget
                                                .arrayListMedicine[index]),
                                            onTap: () async {
                                              await showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title: Text(
                                                        "Update Medicine: "),
                                                    content: TextField(
                                                      controller:
                                                      _textControllerMedicine,
                                                      decoration:
                                                      InputDecoration(
                                                          hintText:
                                                          "eg.(Panadol)"),
                                                    ),
                                                    actions: [
                                                      FloatingActionButton(
                                                        child:
                                                        Text("Cancel"),
                                                        onPressed: () {
                                                          Navigator.of(
                                                              context)
                                                              .pop();
                                                        },
                                                      ),
                                                      FloatingActionButton(
                                                        child:
                                                        Text("Update"),
                                                        onPressed: () {
                                                          Navigator.of(
                                                              context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );

                                              setState(() {
                                                widget.arrayListMedicine[
                                                index] = _textControllerMedicine
                                                    .text.isEmpty
                                                    ? widget.arrayListMedicine[
                                                index]
                                                    : _textControllerMedicine
                                                    .text;
                                              });
                                            },
                                          ),
                                          onDismissed: (direction) {
                                            setState(() {
                                              widget.arrayListMedicine
                                                  .removeAt(index);
                                            });
                                          },
                                        );
                                      },
                                    )),
                              ),
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Medicine: ',
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 14),
                                  ),
                                  Container(
                                    width: screenWidth * 0.125,
                                    child: TextField(
                                      keyboardType: TextInputType.text,
                                      controller: medicineController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "eg.(Concor 5mg,Adol)",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              ElevatedButton(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(Icons.add),
                                    SizedBox(width: 8),
                                    Text("Medicine"),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    widget.arrayListMedicine
                                        .add(medicineController.text);
                                    medicineController.clear();
                                  });
                                },
                              ),

                            ],
                          ),
                        ),
                            Container(
                              height: screenHeight * 0.4,
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
                                        height: screenHeight * 0.2,
                                        width: screenWidth * 0.125,
                                        child: ListView.builder(
                                          itemCount:
                                          widget.arrayListDisease.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Dismissible(
                                              key: Key(widget
                                                  .arrayListDisease[index]),
                                              child: ListTile(
                                                title: Text(widget
                                                    .arrayListDisease[index]),
                                                onTap: () async {
                                                  await showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            "Update Disease: "),
                                                        content: TextField(
                                                          controller:
                                                          _textControllerDisease,
                                                          decoration:
                                                          InputDecoration(
                                                              hintText:
                                                              "eg.(MRI)"),
                                                        ),
                                                        actions: [
                                                          FloatingActionButton(
                                                            child:
                                                            Text("Cancel"),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                  context)
                                                                  .pop();
                                                            },
                                                          ),
                                                          FloatingActionButton(
                                                            child:
                                                            Text("Update"),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                  context)
                                                                  .pop();
                                                            },
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );

                                                  setState(() {
                                                    widget.arrayListDisease[
                                                    index] = _textControllerDisease
                                                        .text.isEmpty
                                                        ? widget.arrayListDisease[
                                                    index]
                                                        : _textControllerDisease
                                                        .text;
                                                  });
                                                },
                                              ),
                                              onDismissed: (direction) {
                                                setState(() {
                                                  widget.arrayListDisease
                                                      .removeAt(index);
                                                });
                                              },
                                            );
                                          },
                                        )),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Disease: ',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14),
                                      ),
                                      Container(
                                        width: screenWidth * 0.125,
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          controller: diseaseController,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: "eg.(X-Ray)",
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                  ElevatedButton(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Icon(Icons.add),
                                        SizedBox(width: 8),
                                        Text("Disease"),
                                      ],
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        widget.arrayListDisease
                                            .add(diseaseController.text);
                                        diseaseController.clear();
                                      });
                                    },
                                  ),

                                ],
                              ),
                            ),
                            Container(
                              height: screenHeight * 0.4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Operations: ',
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
                                        height: screenHeight * 0.2,
                                        width: screenWidth * 0.125,
                                        child: ListView.builder(
                                          itemCount:
                                          widget.arrayListOperation.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Dismissible(
                                              key: Key(widget
                                                  .arrayListOperation[index]),
                                              child: ListTile(
                                                title: Text(widget
                                                    .arrayListOperation[index]),
                                                onTap: () async {
                                                  await showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            "Update Operations: "),
                                                        content: TextField(
                                                          controller:
                                                          _textControllerOperation,
                                                          decoration:
                                                          InputDecoration(
                                                              hintText:
                                                              "eg.(Tarkeeb Masameer)"),
                                                        ),
                                                        actions: [
                                                          FloatingActionButton(
                                                            child:
                                                            Text("Cancel"),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                  context)
                                                                  .pop();
                                                            },
                                                          ),
                                                          FloatingActionButton(
                                                            child:
                                                            Text("Update"),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                  context)
                                                                  .pop();
                                                            },
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );

                                                  setState(() {
                                                    widget.arrayListOperation[
                                                    index] = _textControllerOperation
                                                        .text.isEmpty
                                                        ? widget.arrayListOperation[
                                                    index]
                                                        : _textControllerOperation
                                                        .text;
                                                  });
                                                },
                                              ),
                                              onDismissed: (direction) {
                                                setState(() {
                                                  widget.arrayListOperation
                                                      .removeAt(index);
                                                });
                                              },
                                            );
                                          },
                                        )),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Operation: ',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14),
                                      ),
                                      Container(
                                        width: screenWidth * 0.125,
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          controller: operationController,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: "eg.(Tarkeb Masameer)",
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                  ElevatedButton(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Icon(Icons.add),
                                        SizedBox(width: 8),
                                        Text("Operation"),
                                      ],
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        widget.arrayListOperation
                                            .add(operationController.text);
                                        operationController.clear();
                                      });
                                    },
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
              //MEDICAL
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth * 0.1,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Debt Info",
                          style: TextStyle(color: Colors.black, fontSize: 28),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: screenWidth * 0.1,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    //Title
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Container(
                      width: screenWidth * 0.75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 6),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Debt Amount: ',
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 14),
                                    ),
                                    Container(
                                      width: screenWidth * 0.1,
                                      child: TextField(
                                        keyboardType: TextInputType.number,
                                        controller: _debtAmountController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'eg.(2500)',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Debt Paid: ',
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 14),
                                    ),
                                    Container(
                                      width: screenWidth * 0.1,
                                      child: TextField(
                                        keyboardType: TextInputType.number,
                                        controller: _debtPaidController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'eg.(1000)',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                 Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Debt Type: ',
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 14),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(12),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black26,
                                                offset: Offset(0, 6),
                                                blurRadius: 6,
                                              ),
                                            ],
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 12,
                                                right: 12,
                                                top: 4,
                                                bottom: 4),
                                            child: DropdownButton<String>(
                                              value: dropdowndebtTypeValue,
                                              icon: const Icon(
                                                  Icons.arrow_downward),
                                              elevation: 16,
                                              style: const TextStyle(
                                                  color: Colors.deepPurple),
                                              underline: Container(
                                                height: 2,
                                                color: Colors.deepPurpleAccent,
                                              ),
                                              onChanged: (String? value) {
                                                setState(() {
                                                  dropdowndebtTypeValue =
                                                  value!;
                                                });
                                              },
                                              items: debtTypeList.map<
                                                  DropdownMenuItem<String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                            ),
                                          ),
                                        ),
                                      ]),
                                  
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Debt Due Date: ',
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 14),
                                    ),
                                    Container(
                                      width: screenWidth * 0.15,
                                      child: TextField(
                                        controller: _debtDeadlineDayController,
                                        readOnly: true,
                                        onTap: () async {
                                          FocusScope.of(context)
                                              .requestFocus(new FocusNode());
                                          final date = await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(1900),
                                            lastDate: DateTime(2100),
                                          );
                                          if (date != null) {
                                            setState(() {
                                              _debtDeadlineDayController.text =
                                                  "${date.day.toString().padLeft(2, '0')}/"
                                                  "${date.month.toString().padLeft(2, '0')}/"
                                                  "${date.year}";
                                            });
                                          }
                                        },
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'eg.29/03/2001',
                                          suffixIcon:
                                              Icon(Icons.calendar_month),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //Name age phone number
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Debt
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth * 0.1,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Notes",
                          style: TextStyle(color: Colors.black, fontSize: 28),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: screenWidth * 0.1,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    //Title
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Container(
                      width: screenWidth * 0.75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 6),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Any Notes: ',
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 14),
                                    ),
                                    Container(
                                      width: screenWidth * 0.7,
                                      child: TextField(
                                        keyboardType: TextInputType.number,
                                        controller: _notesController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText:
                                              'eg.Write any notes you might have on the person',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //Name age phone number
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Notes
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Container(
                width: screenWidth * 0.15,
                height: screenHeight * 0.05,
                child: ElevatedButton(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.person_add_alt_1_sharp),
                      SizedBox(width: 12),
                      Text("Edit Person"),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
                  onPressed: () {
                    Map<String, dynamic> newPeople = {
                      'id': widget.docId,
                      'name': _nameController.text.isEmpty? widget.name : _nameController.text,
                      'sex': sexIndex == 0 ? "Male" : "Female",
                      'numOfPeople':
                          int.tryParse(_numOfPeopleLivingController.text) ??
                              widget.numOfPeople,
                      'socialStatus': dropdownValue,
                      'age': int.tryParse(_ageController.text) ?? widget.age,
                      'buildingNum':
                          int.tryParse(_buildingNumController.text) ??
                              widget.buildingNum,
                      'phoneNum': int.tryParse(_phoneNumberController.text) ??
                          widget.phoneNum,
                      'debtPaid': int.tryParse(_debtPaidController.text) ??
                          widget.debtPaid,
                      'debtAmount': int.tryParse(_debtAmountController.text) ??
                          widget.debtAmount,
                      'debtType': dropdowndebtTypeValue,
                      'maxDebtDate': _debtDeadlineDayController.text.isEmpty
                          ? widget.maxDebtDate
                          : _debtDeadlineDayController.text,
                      'medicine': widget.arrayListMedicine.isEmpty
                          ? ["None"]
                          : widget.arrayListMedicine,
                      'operations': widget.arrayListOperation.isEmpty
                          ? ["None"]
                          : widget.arrayListOperation,
                      'disease': widget.arrayListDisease.isEmpty
                          ? ["None"]
                          : widget.arrayListDisease,
                      'jobType': dropdownWorkValue,
                      'kindOfJob': _jobTypeController.text.isEmpty
                          ? widget.jobType
                          : _jobTypeController.text,
                      'totalMasareef':
                          int.tryParse(_totalMasareefController.text) ??
                              widget.totalMasareef,
                      'salary':
                          int.tryParse(_salaryController.text) ?? widget.salary,
                      'notes': _notesController.text,
                    };
                    db
                        .collection(widget.street)
                        .doc(widget.docId)
                        .update(newPeople)
                        .onError((e, _) => print("Error writing document: $e"));

                    Navigator.pop(context);
                  },
                ),
              ),
              //Edit Person

              SizedBox(
                height: screenHeight * 0.025,
              ),
              Container(
                width: screenWidth * 0.1,
                height: screenHeight * 0.05,
                child: ElevatedButton(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.delete),
                      SizedBox(width: 10),
                      Text("Delete Person"),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    db
                        .collection(widget.street)
                        .doc(widget.docId)
                        .delete()
                        .onError((e, _) => print("Error delete document: $e"));

                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => People(streetName: widget.street,)
                        ),
                            (route) => false
                    );

                  },
                ),
              ),

              SizedBox(
                height: screenHeight * 0.1,
              ),
              BottomPart(screenHeight: screenHeight,),

            ],

          ),
        ),
      ),
    );
  }
}

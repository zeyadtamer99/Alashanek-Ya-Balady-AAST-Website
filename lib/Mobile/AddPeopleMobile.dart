import 'dart:math';
import 'package:ayb_database/Widgets/BottomPartMobile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Widgets/BottomPart.dart';

class AddPeopleMobile extends StatefulWidget {
  double screenWidth;
  double screenHeight;
  String street;
  AddPeopleMobile(
      {super.key,
      required this.street,
      required this.screenWidth,
      required this.screenHeight});

  @override
  _AddPeopleMobileState createState() => _AddPeopleMobileState();
}

class _AddPeopleMobileState extends State<AddPeopleMobile> {
  var db = FirebaseFirestore.instance;

  final nameContoller = TextEditingController();
  final ageContoller = TextEditingController();
  final sexContoller = TextEditingController();
  final phoneNumContoller = TextEditingController();
  final buildingNumContoller = TextEditingController();
  final numOfPeopleContoller = TextEditingController();
  final socialStatusContoller = TextEditingController();
  final jobController = TextEditingController();
  final totalMasareefController = TextEditingController();
  final incomeAmountController = TextEditingController();
  final medicineController = TextEditingController();
  final operationController = TextEditingController();
  final diseaseController = TextEditingController();
  final debtAmountController = TextEditingController();
  final debtPaidController = TextEditingController();
  final debtTypeController = TextEditingController();
  final debtDueDateController = TextEditingController();
  final notesController = TextEditingController();

  List<Widget> icons = <Widget>[
    Icon(Icons.male),
    Icon(Icons.female),
  ];
  final List<bool> _selectedWeather = <bool>[false, false];
  List<String> list = <String>[
    'Married',
    'Single',
    'Widow',
    'Divorced',
    'its Complicated',
    'None'
  ];
  String dropdownValue = 'None';

  List<String> workList = <String>[
    'Monthly',
    'Weekly',
    'Daily',
    '3ala allah',
    'None'
  ];
  String dropdownWorkValue = 'None';

  List<String> debtTypeList = <String>[
    'Kembiyalat',
    'Loan from bank',
    'Loan from ass.',
    'Welad el Halal',
    'None'
  ];
  String dropdowndebtTypeValue = 'None';

  int sexIndex = 0;
  late String _name;
  late int _age;
  late String _sex;
  late String _phoneNum;
  late List<String> _diseases = [];
  late List<String> _medicines = [];
  late List<String> _operation = [];

  final List<String> _arrayListMedicine = [];
  final List<String> _arrayListDisease = [];
  final List<String> _arrayListOperation = [];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: widget.screenHeight,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: widget.screenWidth * 0.1,
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
                            width: widget.screenWidth * 0.1,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      //Title
                      SizedBox(
                        height: widget.screenHeight * 0.01,
                      ),
                      Container(
                        width: widget.screenWidth * 0.85,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
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
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Name: ',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14),
                                      ),
                                      Container(
                                        width: widget.screenWidth * 0.5,
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          controller: nameContoller,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Enter A Name',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: widget.screenHeight * 0.02),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Age: ',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14),
                                      ),
                                      Container(
                                        width: widget.screenWidth * 0.5,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          controller: ageContoller,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Enter the Age',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: widget.screenHeight * 0.02),
                                  Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Phone Number: ',
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 14),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: widget.screenWidth * 0.5,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: widget.screenWidth *
                                                        0.5,
                                                    child: TextField(
                                                      keyboardType:
                                                          TextInputType.number,
                                                      controller:
                                                          phoneNumContoller,
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            OutlineInputBorder(),
                                                        hintText:
                                                            'Enter phone number',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: widget.screenHeight * 0.02),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Building Number: ',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14),
                                      ),
                                      Container(
                                        width: widget.screenWidth * 0.5,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          controller: buildingNumContoller,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText:
                                                'Enter the Building number',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: widget.screenHeight * 0.02),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Num of People',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14),
                                      ),
                                      Container(
                                        width: widget.screenWidth * 0.5,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          controller: numOfPeopleContoller,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText:
                                                'Enter Num Of People Living',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: widget.screenHeight * 0.02),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sex: ',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14),
                                      ),
                                      ToggleButtons(
                                        onPressed: (int index) {
                                          setState(() {
                                            for (int i = 0;
                                                i < _selectedWeather.length;
                                                i++) {
                                              _selectedWeather[i] = i == index;
                                              sexIndex = index;
                                            }
                                          });
                                        },
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(8)),
                                        selectedBorderColor: sexIndex == 0
                                            ? Colors.blue[700]
                                            : Colors.pink[700],
                                        selectedColor: Colors.white,
                                        fillColor: sexIndex == 0
                                            ? Colors.blue[200]
                                            : Colors.pink[200],
                                        isSelected: _selectedWeather,
                                        children: icons,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: widget.screenHeight * 0.02),
                                  DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: const Icon(Icons.arrow_downward),
                                    elevation: 16,
                                    style: const TextStyle(color: Colors.red),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.redAccent,
                                    ),
                                    onChanged: (String? value) {
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  )
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
                //Personal
                SizedBox(
                  height: widget.screenHeight * 0.05,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: widget.screenWidth * 0.1,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Work Info",
                            style: TextStyle(color: Colors.black, fontSize: 28),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: widget.screenWidth * 0.1,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      //Title
                      SizedBox(
                        height: widget.screenHeight * 0.01,
                      ),
                      Container(
                        width: widget.screenWidth * 0.85,
                        height: widget.screenHeight * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 6),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Job: ',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14),
                                      ),
                                      Container(
                                        width: widget.screenWidth * 0.5,
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          controller: jobController,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'eg.(Nagar,Sabak)',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: widget.screenWidth * 0.05),
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
                                              elevation: 10,
                                              style: const TextStyle(
                                                  color: Colors.red),
                                              underline: Container(
                                                height: 2,
                                                color: Colors.redAccent,
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
                                  SizedBox(width: widget.screenWidth * 0.05),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Total Masareef: ',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: widget.screenWidth * 0.5,
                                            child: TextField(
                                              keyboardType:
                                                  TextInputType.number,
                                              controller:
                                                  totalMasareefController,
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
                                  SizedBox(width: widget.screenWidth * 0.05),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Income amount: ',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: widget.screenWidth * 0.5,
                                            child: TextField(
                                              keyboardType:
                                                  TextInputType.number,
                                              controller:
                                                  incomeAmountController,
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
                  height: widget.screenHeight * 0.05,
                ),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: widget.screenWidth * 0.1,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Medical Info",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 28),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: widget.screenWidth * 0.1,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        //Title
                        SizedBox(
                          height: widget.screenHeight * 0.01,
                        ),
                        Container(
                          width: widget.screenWidth * 0.85,
                          height: widget.screenHeight * 1.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: const [
                              const BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 6),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
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
                                                color: Colors.black45,
                                                fontSize: 14),
                                          ),
                                          Container(
                                            width: widget.screenWidth * 0.5,
                                            child: TextField(
                                              keyboardType: TextInputType.text,
                                              controller: medicineController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: 'eg.(Concor 5mg)',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: widget.screenHeight * 0.01,
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
                                            _arrayListMedicine
                                                .add(medicineController.text);
                                            medicineController.clear();
                                          });
                                        },
                                      ),
                                      Container(
                                        height: widget.screenHeight * 0.2,
                                        width: widget.screenWidth * 0.5,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: List.generate(
                                                _arrayListMedicine.length,
                                                (index) {
                                              return ListTile(
                                                title: Text(
                                                    _arrayListMedicine[index]),
                                              );
                                            }),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
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
                                                color: Colors.black45,
                                                fontSize: 14),
                                          ),
                                          Container(
                                            width: widget.screenWidth * 0.5,
                                            child: TextField(
                                              keyboardType: TextInputType.text,
                                              controller: diseaseController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: "eg.(Sokar,Da3'd)",
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: widget.screenHeight * 0.01,
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
                                            _arrayListDisease
                                                .add(diseaseController.text);
                                            diseaseController.clear();
                                          });
                                        },
                                      ),
                                      Container(
                                        height: widget.screenHeight * 0.2,
                                        width: widget.screenWidth * 0.5,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: List.generate(
                                                _arrayListDisease.length,
                                                (index) {
                                              return ListTile(
                                                title: Text(
                                                    _arrayListDisease[index]),
                                              );
                                            }),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
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
                                                color: Colors.black45,
                                                fontSize: 14),
                                          ),
                                          Container(
                                            width: widget.screenWidth * 0.5,
                                            child: TextField(
                                              keyboardType: TextInputType.text,
                                              controller: operationController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:
                                                    'eg.(tarkeeb masameer)',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: widget.screenHeight * 0.01,
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
                                            _arrayListOperation
                                                .add(operationController.text);
                                            operationController.clear();
                                          });
                                        },
                                      ),
                                      Container(
                                        height: widget.screenHeight * 0.2,
                                        width: widget.screenWidth * 0.5,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: List.generate(
                                                _arrayListOperation.length,
                                                (index) {
                                              return ListTile(
                                                title: Text(
                                                    _arrayListOperation[index]),
                                              );
                                            }),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
                //Medical
                SizedBox(
                  height: widget.screenHeight * 0.05,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: widget.screenWidth * 0.1,
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
                            width: widget.screenWidth * 0.1,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      //Title
                      SizedBox(
                        height: widget.screenHeight * 0.01,
                      ),
                      Container(
                        width: widget.screenWidth * 0.85,
                        height: widget.screenHeight * 0.6,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
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
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              child: Container(
                                height: widget.screenHeight * 0.57,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Debt Amount: ',
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 14),
                                        ),
                                        Container(
                                          width: widget.screenWidth * 0.5,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            controller: debtAmountController,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: 'eg.(2500)',
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
                                          'Debt Paid: ',
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 14),
                                        ),
                                        Container(
                                          width: widget.screenWidth * 0.5,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            controller: debtPaidController,
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
                                                  color:
                                                      Colors.deepPurpleAccent,
                                                ),
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    dropdowndebtTypeValue =
                                                        value!;
                                                  });
                                                },
                                                items: debtTypeList.map<
                                                        DropdownMenuItem<
                                                            String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          ),
                                        ]),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Debt Due Date: ',
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 14),
                                        ),
                                        Container(
                                          width: widget.screenWidth * 0.5,
                                          child: TextField(
                                            controller: debtDueDateController,
                                            readOnly: true,
                                            onTap: () async {
                                              FocusScope.of(context)
                                                  .requestFocus(
                                                      new FocusNode());
                                              final date = await showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(1900),
                                                lastDate: DateTime(2100),
                                              );
                                              if (date != null) {
                                                debtDueDateController.text =
                                                    "${date.day.toString().padLeft(2, '0')}/"
                                                    "${date.month.toString().padLeft(2, '0')}/"
                                                    "${date.year}";
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
                  height: widget.screenHeight * 0.05,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: widget.screenWidth * 0.1,
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
                            width: widget.screenWidth * 0.1,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      //Title
                      SizedBox(
                        height: widget.screenHeight * 0.01,
                      ),
                      Container(
                        width: widget.screenWidth * 0.85,
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
                                  horizontal: 8, vertical: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Any Notes: ',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14),
                                      ),
                                      Container(
                                        width: widget.screenWidth * 0.7,
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          controller: notesController,
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
                  height: widget.screenHeight * 0.05,
                ),
                Container(
                  width: widget.screenWidth * 0.5,
                  height: widget.screenHeight * 0.07,
                  child: ElevatedButton(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.person_add_alt_1_sharp,size: (widget.screenHeight/widget.screenWidth)*15,),
                        SizedBox(width: widget.screenWidth*0.03),
                        Text("Add Person",style: TextStyle(fontSize: (widget.screenHeight/widget.screenWidth)*7),),
                      ],
                    ),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      late List<String> _Empty = ["None"];
                      Random random = new Random();

                      var docId = nameContoller.text +
                          "-" +
                          random.nextInt(100).toString();
                      Map<String, dynamic> newPeople = {
                        'id': docId,
                        'name': nameContoller.text.isEmpty
                            ? "None"
                            : nameContoller.text,
                        'sex': sexIndex == 0 ? "Male" : "Female",
                        'numOfPeople':
                            int.tryParse(numOfPeopleContoller.text) ?? 0,
                        'socialStatus': dropdownValue,
                        'age': int.tryParse(ageContoller.text) ?? 0,
                        'buildingNum':
                            int.tryParse(buildingNumContoller.text) ?? 0,
                        'phoneNum': int.tryParse(phoneNumContoller.text) ?? 0,
                        'debtPaid': int.tryParse(debtPaidController.text) ?? 0,
                        'debtAmount':
                            int.tryParse(debtAmountController.text) ?? 0,
                        'debtType': dropdowndebtTypeValue,
                        'maxDebtDate': debtDueDateController.text.isEmpty
                            ? "None"
                            : debtDueDateController.text,
                        'medicine': _arrayListMedicine.isEmpty
                            ? ["None"]
                            : _arrayListMedicine,
                        'operations': _arrayListOperation.isEmpty
                            ? ["None"]
                            : _arrayListOperation,
                        'disease': _arrayListDisease.isEmpty
                            ? ["None"]
                            : _arrayListDisease,
                        'jobType': dropdownWorkValue,
                        'kindOfJob': jobController.text.isEmpty
                            ? "None"
                            : jobController.text,
                        'totalMasareef':
                            int.tryParse(totalMasareefController.text) ?? 0,
                        'salary':
                            int.tryParse(incomeAmountController.text) ?? 0,
                        'notes': notesController.text,
                      };
                      db
                          .collection(widget.street)
                          .doc(docId)
                          .set(newPeople)
                          .onError(
                              (e, _) => print("Error writing document: $e"));

                      Navigator.pop(context);
                    },
                  ),
                ),

                SizedBox(
                  height: widget.screenHeight * 0.1,
                ),
                BottomPartMobile(
                  screenHeight: widget.screenHeight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:ayb_database/PersonInfo.dart';
import 'package:ayb_database/Widgets/Cards/PersonCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PeopleList extends StatefulWidget {
  final String streetName;

  const PeopleList({required this.streetName});

  @override
  _PeopleListState createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  String name = "";
  TextEditingController _searchController = TextEditingController();
  late double screenHeight;
  late double screenWidth;

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> people =
    FirebaseFirestore.instance.collection(widget.streetName).snapshots();
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth  = MediaQuery.of(context).size.width;
    return Column(
      children: [
        TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search',
            suffixIcon: IconButton(
              onPressed: () {
                _searchController.clear();
              },
              icon: Icon(Icons.clear),
            ),
          ),
          onChanged: (value) {
            setState(() {
              name = value;
            });
          },
        ),
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            child: Column(
              children: [
                StreamBuilder(
                  stream: people,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return const Text("Something Went Wrong");
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          CircularProgressIndicator(),
                          Text(
                            "Loading Data",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                        ],
                      );
                    }
                    final data = snapshot.requireData;

                    return Container(
                      margin: EdgeInsets.only(
                          right: screenWidth * 0.15, left: screenWidth * 0.15),
                      height: screenHeight,
                      child: ListView.builder(
                        itemCount: data.size,
                        itemBuilder: (context, index) {
                          bool isDebt = false;
                          if (data.docs[index]['debtAmount'] != null &&
                              data.docs[index]['debtAmount'] != 0) {
                            isDebt = true;
                          }
                          bool isMale = false;
                          data.docs[index].data();
                          if (data.docs[index]['sex'] == "Male") {
                            isMale = true;
                          }
                          if (name.isEmpty) {
                            return Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  children: [
                                    Material(
                                      child: InkWell(
                                        hoverColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        child: MaterialButton(
                                          hoverElevation: 0.0,
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => PersonInfo(
                                                    docId: data.docs[index]
                                                        ['id'],
                                                    street: widget.streetName,
                                                    name: data.docs[index]
                                                        ['name'],
                                                    sex: data.docs[index]
                                                        ['sex'],
                                                    numOfPeople: data.docs[index]
                                                        ['numOfPeople'],
                                                    socialStatus:
                                                        data.docs[index]
                                                            ['socialStatus'],
                                                    age: data.docs[index]
                                                        ['age'],
                                                    buildingNum: data.docs[index]
                                                        ['buildingNum'],
                                                    phoneNum: data.docs[index]
                                                        ['phoneNum'],
                                                    debtPaid: data.docs[index]
                                                        ['debtPaid'],
                                                    debtAmount: data.docs[index]
                                                        ['debtAmount'],
                                                    debtType: data.docs[index]
                                                        ['debtType'],
                                                    maxDebtDate: data.docs[index]
                                                        ['maxDebtDate'],
                                                    arrayListMedicine: data.docs[index]['medicine'],
                                                    arrayListDisease: data.docs[index]['disease'],
                                                    arrayListOperation: data.docs[index]['operations'],
                                                    jobType: data.docs[index]['jobType'],
                                                    kindOfJob: data.docs[index]['kindOfJob'],
                                                    totalMasareef: data.docs[index]['totalMasareef'],
                                                    salary: data.docs[index]['salary'],
                                                    notes: data.docs[index]['notes']),
                                              ),
                                            );
                                          },
                                          elevation: 0.0,
                                          hoverColor: Colors.transparent,
                                          color: Colors.transparent,
                                          child: PersonCard(
                                              screenheight: screenHeight,
                                              screenWidth: screenWidth,
                                              name: data.docs[index]['name'],
                                              isMale: isMale,
                                              street: widget.streetName,
                                              buildingNum: data.docs[index]
                                                  ['buildingNum'],
                                              debt: isDebt,
                                              social: data.docs[index]
                                                          ['socialStatus'] ==
                                                      "None"
                                                  ? "Not Available"
                                                  : data.docs[index]
                                                      ['socialStatus'],
                                              phone: data.docs[index]
                                                          ['phoneNum'] ==
                                                      0
                                                  ? 0
                                                  : data.docs[index]
                                                      ['phoneNum']),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                          if (data.docs[index]['name']
                              .toString()
                              .startsWith(name.toLowerCase())) {
                            return Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  children: [
                                    Material(
                                      child: InkWell(
                                        hoverColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        child: MaterialButton(
                                          hoverElevation: 0.0,
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => PersonInfo(
                                                    docId: data.docs[index]
                                                        ['id'],
                                                    street: widget.streetName,
                                                    name: data.docs[index]
                                                        ['name'],
                                                    sex: data.docs[index]
                                                        ['sex'],
                                                    numOfPeople: data.docs[index]
                                                        ['numOfPeople'],
                                                    socialStatus:
                                                        data.docs[index]
                                                            ['socialStatus'],
                                                    age: data.docs[index]
                                                        ['age'],
                                                    buildingNum: data.docs[index]
                                                        ['buildingNum'],
                                                    phoneNum: data.docs[index]
                                                        ['phoneNum'],
                                                    debtPaid: data.docs[index]
                                                        ['debtPaid'],
                                                    debtAmount: data.docs[index]
                                                        ['debtAmount'],
                                                    debtType: data.docs[index]
                                                        ['debtType'],
                                                    maxDebtDate: data.docs[index]
                                                        ['maxDebtDate'],
                                                    arrayListMedicine: data.docs[index]['medicine'],
                                                    arrayListDisease: data.docs[index]['disease'],
                                                    arrayListOperation: data.docs[index]['operations'],
                                                    jobType: data.docs[index]['jobType'],
                                                    kindOfJob: data.docs[index]['kindOfJob'],
                                                    totalMasareef: data.docs[index]['totalMasareef'],
                                                    salary: data.docs[index]['salary'],
                                                    notes: data.docs[index]['notes']),
                                              ),
                                            );
                                          },
                                          elevation: 0.0,
                                          hoverColor: Colors.transparent,
                                          color: Colors.transparent,
                                          child: PersonCard(
                                              screenheight: screenHeight,
                                              screenWidth: screenWidth,
                                              name: data.docs[index]['name'],
                                              isMale: isMale,
                                              street: widget.streetName,
                                              buildingNum: data.docs[index]
                                                  ['buildingNum'],
                                              debt: isDebt,
                                              social: data.docs[index]
                                                          ['socialStatus'] ==
                                                      "None"
                                                  ? "Not Available"
                                                  : data.docs[index]
                                                      ['socialStatus'],
                                              phone: data.docs[index]
                                                          ['phoneNum'] ==
                                                      0
                                                  ? 0
                                                  : data.docs[index]
                                                      ['phoneNum']),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

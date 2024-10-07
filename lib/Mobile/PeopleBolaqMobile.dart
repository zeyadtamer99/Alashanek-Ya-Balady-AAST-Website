import 'package:ayb_database/PersonInfo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../AddPerson.dart';
import '../Widgets/Cards/PersonCardMobile.dart';

class PeopleBolaqMobile extends StatefulWidget {
  final String streetName;

  PeopleBolaqMobile({Key? key, required this.streetName}) : super(key: key);

  @override
  State<PeopleBolaqMobile> createState() => _PeopleBolaqMobileState();
}

class _PeopleBolaqMobileState extends State<PeopleBolaqMobile> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  String name = "";
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> people =
        FirebaseFirestore.instance.collection(widget.streetName).snapshots();

    final firestoreInstance = FirebaseFirestore.instance;

    final CollectionReference peopleCollection =
        firestoreInstance.collection(widget.streetName);

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print("Has Error");
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  height: screenHeight * 0.1,
                  alignment: Alignment.center,
                  child: const Text(
                    'Our Families',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                //Our Families
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Divider(
                    color: Colors.yellow,
                    height: 1,
                    thickness: 2,
                    indent: screenWidth * 0.30,
                    endIndent: screenWidth * 0.30,
                  ),
                ),
                //Divider

//search bar and filter
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: screenWidth * 0.3,
                                height: screenHeight*0.05,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(8)),
                                child: Container(
                                  height: screenHeight*0.05,
                                  width: screenWidth * 0.3,
                                  child: TextField(
                                    keyboardType: TextInputType.text,
                                    controller: _searchController,
                                    onChanged:(value){
                                      setState(() {
                                        name=_searchController.text;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "Search",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  SizedBox(width: screenWidth*0.025,),
                  ],
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
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
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
                                                highlightColor:
                                                    Colors.transparent,
                                                child: MaterialButton(
                                                  hoverElevation: 0.0,
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) => PersonInfo(
                                                            docId: data.docs[index]
                                                                ['id'],
                                                            street: widget
                                                                .streetName,
                                                            name: data.docs[index]
                                                                ['name'],
                                                            sex: data.docs[index]
                                                                ['sex'],
                                                            numOfPeople: data.docs[index]
                                                                ['numOfPeople'],
                                                            socialStatus: data.docs[index][
                                                                'socialStatus'],
                                                            age: data.docs[index]
                                                                ['age'],
                                                            buildingNum: data.docs[index]
                                                                ['buildingNum'],
                                                            phoneNum: data.docs[index]
                                                                ['phoneNum'],
                                                            debtPaid: data.docs[index]['debtPaid'],
                                                            debtAmount: data.docs[index]['debtAmount'],
                                                            debtType: data.docs[index]['debtType'],
                                                            maxDebtDate: data.docs[index]['maxDebtDate'],
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
                                                  hoverColor:
                                                      Colors.transparent,
                                                  color: Colors.transparent,
                                                  child: PersonCardMobile(
                                                      screenheight:
                                                          screenHeight,
                                                      screenWidth: screenWidth,
                                                      name: data.docs[index]
                                                          ['name'],
                                                      isMale: isMale,
                                                      street: widget.streetName,
                                                      buildingNum:
                                                          data.docs[index]
                                                              ['buildingNum'],
                                                      debt: isDebt,
                                                      social: data.docs[index][
                                                                  'socialStatus'] ==
                                                              "None"
                                                          ? "Not Available"
                                                          : data.docs[index]
                                                              ['socialStatus'],
                                                      phone: data.docs[index][
                                                                  'phoneNum'] ==
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
                                      .contains(name)) {
                                    return Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Column(
                                          children: [
                                            Material(
                                              child: InkWell(
                                                hoverColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                child: MaterialButton(
                                                  hoverElevation: 0.0,
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) => PersonInfo(
                                                            docId: data.docs[index]
                                                                ['id'],
                                                            street: widget
                                                                .streetName,
                                                            name: data.docs[index]
                                                                ['name'],
                                                            sex: data.docs[index]
                                                                ['sex'],
                                                            numOfPeople: data.docs[index]
                                                                ['numOfPeople'],
                                                            socialStatus: data.docs[index][
                                                                'socialStatus'],
                                                            age: data.docs[index]
                                                                ['age'],
                                                            buildingNum: data.docs[index]
                                                                ['buildingNum'],
                                                            phoneNum: data.docs[index]
                                                                ['phoneNum'],
                                                            debtPaid: data.docs[index]['debtPaid'],
                                                            debtAmount: data.docs[index]['debtAmount'],
                                                            debtType: data.docs[index]['debtType'],
                                                            maxDebtDate: data.docs[index]['maxDebtDate'],
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
                                                  hoverColor:
                                                      Colors.transparent,
                                                  color: Colors.transparent,
                                                  child: PersonCardMobile(
                                                      screenheight:
                                                          screenHeight,
                                                      screenWidth: screenWidth,
                                                      name: data.docs[index]
                                                          ['name'],
                                                      isMale: isMale,
                                                      street: widget.streetName,
                                                      buildingNum:
                                                          data.docs[index]
                                                              ['buildingNum'],
                                                      debt: isDebt,
                                                      social: data.docs[index][
                                                                  'socialStatus'] ==
                                                              "None"
                                                          ? "Not Available"
                                                          : data.docs[index]
                                                              ['socialStatus'],
                                                      phone: data.docs[index][
                                                                  'phoneNum'] ==
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
                                  return Container();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.06,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddPerson(
                                  streetName: widget.streetName,
                                  screenWidth:
                                      MediaQuery.of(context).size.width,
                                  screenHeight:
                                      MediaQuery.of(context).size.height)),
                        );
                      },
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(Icons.person_add_alt_1_sharp,size: (screenHeight/screenWidth)*17,),
                          SizedBox(width: screenWidth*0.03),
                          Text("Add Person",style: TextStyle(fontSize: (screenHeight/screenWidth)*11),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          });
        }
        return CircularProgressIndicator();
      },
    ));
  }
}

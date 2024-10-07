import 'package:ayb_database/Website/PersonInfoWebsite.dart';
import 'package:flutter/material.dart';

import 'Mobile/PersonInfoMobile.dart';
import 'Widgets/app_bar_mobile.dart';
import 'Widgets/app_bar_website.dart';

class PersonInfo extends StatefulWidget {
  String docId;
  String name;
  String street;
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

  PersonInfo(
      {required this.street,
      required this.name,
      required this.docId,
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
  State<PersonInfo> createState() => _PersonInfoState();
}

class _PersonInfoState extends State<PersonInfo> {
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight*0.06),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return MyAppBarMobile(choose: 4);
              } else if (constraints.maxWidth > 600 &&
                  constraints.maxWidth < 900) {
                return MyAppBarWebsite(choose: 4);
              } else {
                return MyAppBarWebsite(choose: 4);
              }
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return  PersonInfoMobile( docId: widget.docId,
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
                  notes: widget.notes);
            } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
              return  PersonInfoWebsite( docId: widget.docId,
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
                  notes: widget.notes);
            } else {
              return PersonInfoWebsite(
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
                  notes: widget.notes);
            }
          },
        ),
      );
    } else {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight*0.11),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return MyAppBarMobile(choose: 4);
              } else if (constraints.maxWidth > 600 &&
                  constraints.maxWidth < 900) {
                return MyAppBarWebsite(choose: 4);
              } else {
                return MyAppBarWebsite(choose: 4);
              }
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return  PersonInfoMobile( docId: widget.docId,
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
                  notes: widget.notes);
            } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
              return  PersonInfoWebsite( docId: widget.docId,
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
                  notes: widget.notes);
            } else {
              return PersonInfoWebsite(
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
                  notes: widget.notes);
            }
          },
        ),
      );
    }
  }
}

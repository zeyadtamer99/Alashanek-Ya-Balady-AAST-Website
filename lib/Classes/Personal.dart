class Personal {
  int age;
  int buildingNum;
  String name;
  int numOfPeople;
  String sex;
  String socialStatus;


  Personal({required this.age,required this.buildingNum,required this.name,required this.numOfPeople,required this.sex,
required this.socialStatus});

  Map<String, dynamic> toMap() {
    return {
      "age": age,
      "buildingNum": buildingNum,
      "name": name,
      "numOfPeople": numOfPeople,
      "sex":sex,
      "socialStatus":socialStatus
    };
  }

  static Personal fromMap(Map<String, dynamic> map) {
return Personal(
age: map['age'],
buildingNum: map['buildingNum'],
name: map['name'],
numOfPeople: map['numOfPeople'],
sex: map['sex'],
socialStatus: map['socialStatus'],
);
}
}

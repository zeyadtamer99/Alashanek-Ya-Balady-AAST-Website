class Work {
  int totalMasareef;
  int salary;
  String typeOfWork;
  String kindOfWork;


  Work({ required this.totalMasareef, required this.salary,required this.typeOfWork,required this.kindOfWork});

  Map<String, dynamic> toMap() {
    return {
      "kindOfWork": kindOfWork,
      "salary": salary,
      "totalMasareef": totalMasareef,
      "typeOfWork": typeOfWork
    };
  }
  static Work fromMap(Map<String, dynamic> map) {
return Work(
totalMasareef: map['totalMasareef'],
salary: map['salary'],
typeOfWork: map['typeOfWork'],
kindOfWork: map['kindOfWork']
);
}
}


class Health {
  List<String> disease;
  List<String> medicine;
  List<String> operations;

  Health({required this.disease,required this.medicine,required this.operations});

  Map<String, dynamic> toMap() {
    return {
      "disease": disease,
      "medicine":medicine,
      "operations":operations
    };
  }

  static Health fromMap(Map<String, dynamic> map) {
return Health(
disease: List<String>.from(map['disease']),
medicine: List<String>.from(map['medicine']),
operations: List<String>.from(map['operations']),
);
}
}
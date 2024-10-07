class Debt {
  late int debtAmount;
  late int debtPaid;
  late String debtType;
  late String maxDate;

  Debt({required this.debtAmount, required this.debtPaid, required this.debtType, required this.maxDate});

  Debt.fromMap(Map<String, dynamic> map) {
    debtAmount = map["debtAmount"];
    debtPaid = map["debtPaid"];
    debtType = map["debtType"];
    maxDate = map["maxDate"];
  }

  Map<String, dynamic> toMap() {
    return {
      "debtAmount": debtAmount,
      "debtPaid": debtPaid,
      "debtType": debtType,
      "maxDate": maxDate,
    };
  }
}

import 'package:ayb_database/Classes/Debts.dart';
import 'package:ayb_database/Classes/Health.dart';
import 'package:ayb_database/Classes/Personal.dart';
import 'package:ayb_database/Classes/Work.dart';

class Street {
  Debt debt;
  Health health;
  Personal personal;
  Work work;
  String notes;

  Street(
      {required this.debt,
      required this.health,
      required this.personal,
      required this.work,
      required this.notes});

    

  Map<String, dynamic> toJson() {
    return {
      'debt': debt.toMap(),
      'health': health.toMap(),
      'notes': notes,
      'personal': personal.toMap(),
      'work': work.toMap(),
    };
  }

  static Street fromJson(Map<String, dynamic> json) => Street(
      debt: json['debt'],
      health: json['health'],
      personal: json['personal'],
      work: json['work'],
    notes: json['notes']
  );
}

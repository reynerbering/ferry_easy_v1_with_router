// ignore_for_file: public_member_api_docs, sort_constructors_first

import "package:equatable/equatable.dart";

class Ticket extends Equatable {
  final String id;
  bool? isUsed;
  final String datePurchased;
  final String? dateUsed;
  Ticket({
    required this.id,
    this.isUsed,
    required this.datePurchased,
    this.dateUsed,
  }) {
    isUsed = isUsed ?? false;
  }

  Ticket copyWith({
    String? id,
    bool? isUsed,
    String? datePurchased,
    String? dateUsed,
  }) {
    return Ticket(
      id: id ?? this.id,
      isUsed: isUsed ?? this.isUsed,
      datePurchased: datePurchased ?? this.datePurchased,
      dateUsed: dateUsed ?? this.dateUsed,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'isUsed': isUsed,
      'datePurchased': datePurchased,
      'dateUsed': dateUsed,
    };
  }

  @override
  List<Object?> get props => [id, isUsed];

  factory Ticket.fromMap(Map<String, dynamic> map) {
    return Ticket(
      id: map['id'] as String,
      isUsed: map['isUsed'] != null ? map['isUsed'] as bool : null,
      datePurchased: map['datePurchased'] as String,
      dateUsed: map['dateUsed'] != null ? map['dateUsed'] as String : null,
    );
  }
}

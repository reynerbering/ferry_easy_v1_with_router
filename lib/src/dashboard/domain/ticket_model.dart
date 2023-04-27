// ignore_for_file: public_member_api_docs, sort_constructors_first

import "package:equatable/equatable.dart";

class Ticket extends Equatable {
  final String id;
  final String ticketType;
  bool? isUsed;
  final String datePurchased;
  final String? dateUsed;

  Ticket({
    required this.id,
    required this.ticketType,
    this.isUsed,
    required this.datePurchased,
    this.dateUsed,
  }) {
    isUsed = isUsed ?? false;
  }

  Ticket copyWith({
    String? id,
    String? ticketType,
    bool? isUsed,
    String? datePurchased,
    String? dateUsed,
  }) {
    return Ticket(
      id: id ?? this.id,
      ticketType: ticketType ?? this.ticketType,
      isUsed: isUsed ?? this.isUsed,
      datePurchased: datePurchased ?? this.datePurchased,
      dateUsed: dateUsed ?? this.dateUsed,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ticketType': ticketType,
      'isUsed': isUsed,
      'datePurchased': datePurchased,
      'dateUsed': dateUsed,
    };
  }

  @override
  List<Object?> get props => [id, isUsed, datePurchased, dateUsed, ticketType];

  factory Ticket.fromMap(Map<String, dynamic> map) {
    return Ticket(
      id: map['id'] as String,
      ticketType: map['ticketType'] as String,
      isUsed: map['isUsed'] != null ? map['isUsed'] as bool : null,
      datePurchased: map['datePurchased'] as String,
      dateUsed: map['dateUsed'] != null ? map['dateUsed'] as String : null,
    );
  }

  factory Ticket.fromJson(Map<String, dynamic> json) {
    return Ticket(
      id: json['id'] as String,
      ticketType: json['ticketType'] as String,
      isUsed: json['isUsed'] != null ? json['isUsed'] as bool : null,
      datePurchased: json['datePurchased'] as String,
      dateUsed: json['dateUsed'] != null ? json['dateUsed'] as String : null,
    );
  }
}

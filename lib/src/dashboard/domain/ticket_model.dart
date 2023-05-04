import "package:equatable/equatable.dart";

// ignore: must_be_immutable
class TicketModel extends Equatable {
  final String id;
  final String ticketType;
  bool? isUsed;
  final String datePurchased;
  final String? dateUsed;

  TicketModel({
    required this.id,
    required this.ticketType,
    this.isUsed,
    required this.datePurchased,
    this.dateUsed,
  }) {
    isUsed = isUsed ?? false;
  }

  TicketModel copyWith({
    String? id,
    String? ticketType,
    bool? isUsed,
    String? datePurchased,
    String? dateUsed,
  }) {
    return TicketModel(
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

  factory TicketModel.fromMap(Map<String, dynamic> map) {
    return TicketModel(
      id: map['id'] as String,
      ticketType: map['ticketType'] as String,
      isUsed: map['isUsed'] != null ? map['isUsed'] as bool : null,
      datePurchased: map['datePurchased'] as String,
      dateUsed: map['dateUsed'] != null ? map['dateUsed'] as String : null,
    );
  }

  factory TicketModel.fromJson(Map<String, dynamic> json) {
    return TicketModel(
      id: json['id'] as String,
      ticketType: json['ticketType'] as String,
      isUsed: json['isUsed'] != null ? json['isUsed'] as bool : null,
      datePurchased: json['datePurchased'] as String,
      dateUsed: json['dateUsed'] != null ? json['dateUsed'] as String : null,
    );
  }
}

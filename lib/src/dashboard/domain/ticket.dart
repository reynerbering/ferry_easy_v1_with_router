// ignore_for_file: public_member_api_docs, sort_constructors_first

import "package:equatable/equatable.dart";

class Ticket extends Equatable {
  final String id;
  bool? isUsed;
  Ticket({
    required this.id,
    this.isUsed,
  }) {
    isUsed = isUsed ?? false;
  }

  Ticket copyWith({
    String? id,
    bool? isUsed,
  }) {
    return Ticket(
      id: id ?? this.id,
      isUsed: isUsed ?? this.isUsed,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'isUsed': isUsed,
    };
  }

  factory Ticket.fromMap(Map<String, dynamic> map) {
    return Ticket(
      id: map['id'] as String,
      isUsed: map['isUsed'] != null ? map['isUsed'] as bool : null,
    );
  }

  @override
  List<Object?> get props => [id, isUsed];
}

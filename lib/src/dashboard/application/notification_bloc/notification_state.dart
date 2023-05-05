// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'notification_bloc.dart';

class NotificationState extends Equatable {
  int notificationCounter;
  int currentCounter;

  NotificationState({
    this.notificationCounter = 0,
    this.currentCounter = 0,
  });

  @override
  List<Object> get props => [notificationCounter, currentCounter];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationCounter': notificationCounter,
      'currentCounter': currentCounter,
    };
  }

  factory NotificationState.fromMap(Map<String, dynamic> map) {
    return NotificationState(
      notificationCounter: map['notificationCounter'] as int,
      currentCounter: map['currentCounter'] as int,
    );
  }
}

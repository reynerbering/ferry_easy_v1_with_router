// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'notification_bloc.dart';

class NotificationState extends Equatable {
  int notificationCounter;

  NotificationState({
    this.notificationCounter = 0,
  });

  @override
  List<Object> get props => [notificationCounter];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readNotifications': notificationCounter,
    };
  }

  factory NotificationState.fromMap(Map<String, dynamic> map) {
    return NotificationState(
      notificationCounter: map['readNotifications'] as int,
    );
  }
}

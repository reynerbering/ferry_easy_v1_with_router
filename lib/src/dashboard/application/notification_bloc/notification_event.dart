part of 'notification_bloc.dart';

abstract class NotificationEvent extends Equatable {
  const NotificationEvent();

  @override
  List<Object> get props => [];
}

class ReadNotification extends NotificationEvent {
  const ReadNotification();

  @override
  List<Object> get props => [];
}

class GetNotification extends NotificationEvent {
  const GetNotification();

  @override
  List<Object> get props => [];
}

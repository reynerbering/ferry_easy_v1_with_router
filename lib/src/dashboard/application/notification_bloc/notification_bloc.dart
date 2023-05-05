// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(NotificationState()) {
    on<ReadNotification>(_onReadNotification);
    on<GetNotification>(_onGetNotification);
  }
  void _onReadNotification(
      ReadNotification event, Emitter<NotificationState> emit) async {
    emit(
      NotificationState(
          notificationCounter: state.notificationCounter - 1,
          currentCounter: state.currentCounter),
    );
  }

  void _onGetNotification(
      GetNotification event, Emitter<NotificationState> emit) async {
    NotificationState(
        notificationCounter: state.notificationCounter++,
        currentCounter: state.currentCounter);
  }
}

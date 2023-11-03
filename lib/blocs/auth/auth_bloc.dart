import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pet_club/models/user.dart';
import 'package:pet_club/models/status.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.init()) {
    on<AuthInitial>((event, emit) {
      emit(state.copyWith(isLogin: true, status: Status.success));
    });
  }
}

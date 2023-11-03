part of 'auth_bloc.dart';

sealed class AuthEvent {}

final class AuthLogin extends AuthEvent {
  AuthLogin({
    required this.username,
    required this.password,
  });

  final String username;
  final String password;
}

final class AuthLogout extends AuthEvent {}

final class AuthInitial extends AuthEvent {}

final class AuthToggleAgreeToEULA extends AuthEvent {}

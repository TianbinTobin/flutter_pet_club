part of 'auth_bloc.dart';

final class AuthState extends Equatable {
  const AuthState({
    required this.user,
    required this.status,
    required this.isLogin,
    required this.agreedToEULA,
  });

  const AuthState.init()
      : user = User.empty,
        status = Status.idle,
        isLogin = false,
        agreedToEULA = false;

  final User user;
  final bool isLogin;
  final Status status;
  final bool agreedToEULA;

  AuthState copyWith({
    User? user,
    bool? isLogin,
    Status? status,
    bool? agreedToEULA,
  }) {
    return AuthState(
      user: user ?? this.user,
      status: status ?? this.status,
      isLogin: isLogin ?? this.isLogin,
      agreedToEULA: agreedToEULA ?? this.agreedToEULA,
    );
  }

  @override
  List<Object?> get props => <Object?>[user, status, isLogin, agreedToEULA];
}

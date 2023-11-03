import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    this.name,
    this.email,
    this.avatar,
    this.created,
  });

  static const empty = User(id: '');

  final String id;
  final int? created;
  final String? name;
  final String? email;
  final String? avatar;

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;

  @override
  String toString() {
    return 'User $id, $name, $email, $avatar, $created';
  }

  @override
  List<Object?> get props => <Object?>[id, name, email, avatar, created];
}

part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class AuthSingUp extends AuthEvent {
  final String email;
  final String password;
  final String name;

  AuthSingUp({required this.email, required this.password, required this.name});
}

final class AuthLogin extends AuthEvent {
  final String email;
  final String password;

  AuthLogin({required this.email, required this.password});
}

final class AuthIsUserLoggedIn extends AuthEvent {}

part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {}

class AuthSignInEvent extends AuthEvent {
  final String email;
  final String password;

  AuthSignInEvent({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

class AuthSignOutEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class AuthRegisterEvent extends AuthEvent {
  final String email;
  final String password;

  AuthRegisterEvent({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

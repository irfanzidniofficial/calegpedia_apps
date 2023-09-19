part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {}

class AuthInitialState extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthSuccesState extends AuthState {
  final User user;

  AuthSuccesState({required this.user});

  @override
  List<Object?> get props => [user];
}

class AuthSignedOutState extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthErrorState extends AuthState {
  final String error;

  AuthErrorState({required this.error});

  @override
  List<Object?> get props => [error];
}

class AuthLoadingState extends AuthState {
  @override
  List<Object?> get props => [];
}

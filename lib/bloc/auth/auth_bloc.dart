// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:calegpedia_apps/data/datasources/auth_remote_datasource.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRemoteDataSource dataSource;
  AuthBloc(
    this.dataSource,
  ) : super(AuthInitialState()) {
    on<AuthSignInEvent>((event, emit) async {
      emit(AuthLoadingState());
      final result =
          await dataSource.signInExistingUser(event.email, event.password);
      result.fold(
        (l) => emit(AuthErrorState(error: l)),
        (r) => emit(AuthSuccesState(user: r)),
      );
    });

    on<AuthRegisterEvent>((event, emit) async {
      emit(AuthLoadingState());
      final result =
          await dataSource.createNewUser(event.email, event.password);
      result.fold(
        (l) => emit(AuthErrorState(error: l)),
        (r) => emit(AuthSuccesState(user: r)),
      );
    });

    on<AuthSignOutEvent>((event, emit) async {
      emit(AuthLoadingState());
      final result = await dataSource.signOut();
      result.fold(
        (l) => emit(AuthErrorState(error: l)),
        (r) => emit(AuthSignedOutState()),
      );
    });
  }
}

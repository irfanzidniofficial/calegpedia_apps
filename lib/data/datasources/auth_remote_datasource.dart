import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:dartz/dartz.dart';

class AuthRemoteDataSource {
  final supaClient = Supabase.instance.client;

  Future<Either<String, User>> signInExistingUser(
      String email, String password) async {
    try {
      final res = await supaClient.auth
          .signInWithPassword(email: email, password: password);
      final User? user = res.user;
      return Right(user!);
    } catch (e) {
      return left(e.toString());
    }
  }

  Future<Either<String, User>> createNewUser(
      String email, String password) async {
    try {
      final res =
          await supaClient.auth.signUp(email: email, password: password);
      final User? user = res.user;
      return Right(user!);
    } catch (e) {
      return left(e.toString());
    }
  }

  Future<Either<String, String>> signOut() async {
    try {
      final res = await supaClient.auth.signOut();
      return const Right("Succes");
    } catch (e) {
      return left(e.toString());
    }
  }

  // Future<User?> createNewUser(String email, String password) async {
  //   try {
  //     final res = await Supabase.instance.client.auth
  //         .signUp(email: email, password: password);
  //     final User? user = res.user;
  //     return user;
  //   } catch (e) {
  //     throw e;
  //   }
  // }

  // Future<User?> signInExistingUser(String email, String password) async {
  //   try {
  //     final res = await supaClient.auth
  //         .signInWithPassword(password: password, email: email);
  //     final User? user = res.user;
  //     return user;
  //   } catch (e) {
  //     throw e;
  //   }
  // }

  //no

  // Future<void> signUp({
  //   required String email,
  //   required String password,
  // }) async {
  //   try {
  //     AuthResponse response = await SupabaseCredentials.supabaseClient.auth
  //         .signUp(email: email, password: password);

  //     if (response.user != null) {
  //       print("Signup Succes");
  //     }
  //   } catch (e) {
  //     print("Signup Failed");
  //   }
  // }

  // Future<void> register(RegisterRequestModel model) async {
  //   AuthResponse response = await SupabaseCredentials.supabaseClient.auth
  //       .signUp(email: model.email, password: model.password);
  //   if (response.user != null) {
  //     print("Signup Succes");
  //   }
  // }
}

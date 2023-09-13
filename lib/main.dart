import 'package:calegpedia_apps/presentation/dashboard/dashboard_page.dart';
import 'package:calegpedia_apps/presentation/signin/sign_in_page.dart';
import 'package:calegpedia_apps/presentation/signin/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //todo route sementara
      initialRoute: '/sign-in',
      routes: {
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home': (context) => const DashboardPage(),
      },
    );
  }
}

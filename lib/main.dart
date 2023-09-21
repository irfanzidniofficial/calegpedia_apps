import 'package:calegpedia_apps/bloc/auth/auth_bloc.dart';
import 'package:calegpedia_apps/common/theme.dart';
import 'package:calegpedia_apps/data/datasources/auth_remote_datasource.dart';
import 'package:calegpedia_apps/presentation/agenda/agenda_check_page.dart';
import 'package:calegpedia_apps/presentation/dashboard/dashboard_page.dart';
import 'package:calegpedia_apps/presentation/signin/sign_in_page.dart';
import 'package:calegpedia_apps/presentation/signin/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  await Supabase.initialize(
    url: dotenv.get('SUPABASE_URL'),
    anonKey: dotenv.get('SUPABASE_ANON_KEY'),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(AuthRemoteDataSource()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            titleTextStyle: darkBlueTextStyle.copyWith(
              fontSize: 30,
              fontWeight: bold,
            ),
            centerTitle: true,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        //todo route sementara
        initialRoute: '/home',
        routes: {
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/home': (context) => const DashboardPage(),
          '/agenda-check': (context) => const AgendaCheckPage(),
        },
      ),
    );
  }
}

// final supabase = Supabase.instance.client;

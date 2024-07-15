import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduitproject/bloc/general_bloc_bloc.dart';
import 'package:graduitproject/theme/bloc/theme_bloc.dart';
import './diohellper.dart';
import './screens/splash.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
            create: (context) => ThemeBloc()..add(GetCurrentThemeEvent())),
        BlocProvider<GeneralBlocBloc>(
            create: (context) => GeneralBlocBloc()..add(GetUserEvent())),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          if (state is LoadedThemeState) {
            return MaterialApp(
              theme: state.themeData,
              debugShowCheckedModeBanner: false,
              home: Splash_Screen(),
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}

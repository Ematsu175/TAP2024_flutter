import 'package:flutter/material.dart';
import 'package:tap_2024/screens/home_screen.dart';
import 'package:tap_2024/screens/intenciones_screen.dart';
import 'package:tap_2024/screens/login_screen_2.dart';
import 'package:tap_2024/screens/popular_screen.dart';
import 'package:tap_2024/screens/registrer_screen.dart';
import 'package:tap_2024/screens/splash_screen.dart';
import 'package:tap_2024/settings/theme_settings.dart';
import 'package:tap_2024/settings/value_listener.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder(
      valueListenable: ValueListener.isDark,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: RegistrerScreen(),
          theme: value 
          ? ThemeSettings.darkTheme(context) 
          : ThemeSettings.lightTheme(context),
          routes: {
            "/home" :(context) => HomeScreen(),
            "/login2" : (context) => LoginScreen2(),
            "/intent" : (context) => IntencionesScreen(),
            "/popular" : (context) => PopularScreen(),
            "/registrer" : (context) => RegistrerScreen(),
          },
        );
      }
    );
  }
}
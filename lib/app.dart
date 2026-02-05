import 'package:e_commerce/features/splash/splash_screen.dart';
import 'package:e_commerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      themeMode: ThemeMode.system,
      theme: JJAppTheme.lightTheme,
      darkTheme: JJAppTheme.darkTheme,

      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const Scaffold(
          body: Center(
            child: Text('Home Screen'),
          ),
        ),
      },
    );
  }
}

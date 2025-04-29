import 'package:flutter/material.dart';
import 'package:my_ecommerce/utils/themes/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce App',
      themeMode: ThemeMode.system,
      theme: TApptheme.lightTheme,
      darkTheme: TApptheme.darkTheme,
    );
  }
}

import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 24, 87, 245),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 3, 1, 69),
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fn) {
    runApp(
      MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: kDarkColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
            color: kDarkColorScheme.inversePrimary,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 6,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDarkColorScheme.onPrimaryContainer,
            ),
          ),
        ),
        theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: const Color.fromARGB(255, 8, 8, 143),
            foregroundColor: kColorScheme.onPrimary,
          ),
          cardTheme: const CardTheme().copyWith(
            color: kColorScheme.inversePrimary,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 6,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primary,
              foregroundColor: kColorScheme.secondaryContainer,
            ),
          ),
        ),
        themeMode: ThemeMode.system,
        home: const Expenses(),
      ),
    );
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_application_unidad3/providers/movies_provider.dart';
import 'package:flutter_application_unidad3/providers/movies_providertwu.dart';
import 'package:flutter_application_unidad3/screens/details_screen.dart';
import 'package:flutter_application_unidad3/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppSate());

class AppSate extends StatelessWidget {
  const AppSate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MoviesProvider(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (_) => MoviesProvidertwu(),
          lazy: false,
        )
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: {
        'home': (_) => const HomeScreen(),
        'details': (_) => const DetailsScreen(),
      },
      initialRoute: 'home',
      theme: ThemeData.light().copyWith(
          appBarTheme:
              const AppBarTheme(color: Color.fromARGB(255, 225, 0, 255))),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_unidad3/providers/movies_providertwu.dart';
import 'package:flutter_application_unidad3/screens/widgets/background.dart';
import 'package:flutter_application_unidad3/screens/widgets/card_widget.dart';
import 'package:provider/provider.dart';
import '../providers/movies_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);
    final moviesProvidertwu =
        Provider.of<MoviesProvidertwu>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: Stack(children: [
        const Background(),
        SingleChildScrollView(
          child: Column(
            children: [
              CardSwiper(movies: moviesProvider.dataMovies),
              CardSwiper(movies: moviesProvidertwu.dataMovies),
            ],
          ),
        ),
      ]),
    );
  }
}

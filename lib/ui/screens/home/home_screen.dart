import 'package:flutter/material.dart';
import 'package:movie_app/ui/screens/home/home_screen_image.dart';
import 'package:movie_app/ui/screens/home/title_row.dart';
import 'package:movie_app/ui/theme/theme.dart';
import 'package:movie_app/providers.dart';
import 'horiz_movies.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: screenBackground,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 24),
                    child: Text('Now Playing', style: largeTitle),
                  ),
                ),
                const HomeScreenImage(),

                TitleRow(text: 'Trending', onMoreClicked: () {}),
                const HorizontalMovies(movies: images),

                TitleRow(text: 'Popular', onMoreClicked: () {}),
                const HorizontalMovies(movies: images),

                TitleRow(text: 'Top Rated', onMoreClicked: () {}),
                const HorizontalMovies(movies: images),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

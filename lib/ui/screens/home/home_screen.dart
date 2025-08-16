import 'package:flutter/material.dart';
import 'package:movie_app/ui/screens/home/home_screen_image.dart';
import 'package:movie_app/ui/screens/home/title_row.dart';

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
            color: const Color(0xFF111111),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 24),
                    child: Text(
                      'Now Playing',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
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

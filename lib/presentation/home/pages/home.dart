import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movifi/common/helper/navigation/app_navigation.dart';
import 'package:movifi/common/widgets/appbar/app_bar.dart';
import 'package:movifi/core/configs/assets/app_vectors.dart';
import 'package:movifi/presentation/home/widgets/category_text.dart';
import 'package:movifi/presentation/home/widgets/now_playing_movies.dart';
import 'package:movifi/presentation/home/widgets/popular_tv.dart';
import 'package:movifi/presentation/home/widgets/trending_movies.dart';

import '../../search/pages/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        hideBack: true,
        action: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            AppNavigator.push(context, const SearchPage());
          },
        ),
        title: SvgPicture.asset(AppVectors.logo),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryText(title: 'Trendings 🔥'),
            TrendingMovies(),
            SizedBox(height: 16),
            CategoryText(title: 'Now Playing'),
            SizedBox(height: 16),
            NowPlayingMovies(),
            SizedBox(height: 16),
            CategoryText(title: 'Popular TV'),
            SizedBox(height: 16),
            PopularTv(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

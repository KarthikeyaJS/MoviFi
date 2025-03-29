import 'package:dartz/dartz.dart';
import 'package:movifi/core/usecase/usecase.dart';
import 'package:movifi/domain/movie/repositories/movie.dart';
import 'package:movifi/service_locator.dart';

class GetTrendingMoviesUseCase extends UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<MovieRepository>().getTrendingMovies();
  }
}

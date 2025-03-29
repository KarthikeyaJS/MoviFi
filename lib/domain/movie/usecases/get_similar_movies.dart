import 'package:dartz/dartz.dart';
import 'package:movifi/core/usecase/usecase.dart';
import 'package:movifi/domain/movie/repositories/movie.dart';
import 'package:movifi/service_locator.dart';

class GetSimilarMoviesUseCase extends UseCase<Either, int> {
  @override
  Future<Either> call({int? params}) async {
    return await sl<MovieRepository>().getSimilarMovies(params!);
  }
}

import 'package:dartz/dartz.dart';
import 'package:movifi/core/usecase/usecase.dart';
import 'package:movifi/domain/tv/repositories/tv.dart';
import 'package:movifi/service_locator.dart';

class GetSimilarTvsUseCase extends UseCase<Either, int> {
  @override
  Future<Either> call({int? params}) async {
    return await sl<TVRepository>().getSimilarTVs(params!);
  }
}

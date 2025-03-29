import 'package:dartz/dartz.dart';
import 'package:movifi/core/usecase/usecase.dart';
import 'package:movifi/domain/tv/repositories/tv.dart';
import 'package:movifi/service_locator.dart';

class GetPopularTVUseCase extends UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<TVRepository>().getPopularTV();
  }
}

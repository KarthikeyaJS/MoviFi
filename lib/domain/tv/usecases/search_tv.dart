import 'package:dartz/dartz.dart';
import 'package:movifi/core/usecase/usecase.dart';
import 'package:movifi/domain/tv/repositories/tv.dart';
import 'package:movifi/service_locator.dart';

class SearchTVUseCase extends UseCase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return await sl<TVRepository>().searchTV(params!);
  }
}

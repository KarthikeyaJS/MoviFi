import 'package:dartz/dartz.dart';
import 'package:movifi/core/usecase/usecase.dart';
import 'package:movifi/data/auth/models/signup_req_params.dart';
import 'package:movifi/domain/auth/repositories/auth.dart';
import 'package:movifi/service_locator.dart';

class SignupUseCase extends UseCase<Either, SignupReqParams> {
  @override
  Future<Either> call({SignupReqParams? params}) async {
    return await sl<AuthRepository>().signup(params!);
  }
}

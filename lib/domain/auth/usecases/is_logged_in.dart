import 'package:movifi/core/usecase/usecase.dart';
import 'package:movifi/domain/auth/repositories/auth.dart';
import 'package:movifi/service_locator.dart';

class IsLoggedInUseCase extends UseCase<bool, dynamic> {
  @override
  Future<bool> call({params}) async {
    return await sl<AuthRepository>().isLoggedIn();
  }
}

import 'package:dart_backend/src/domain/protocols/repositories/create_user_repository.dart';
import 'package:dart_backend/src/domain/protocols/usecases/create_user_usecase.dart';

class CreateUserRepositoryMock implements CreateUserRepository {
  late UserData params;

  @override
  Future<bool> create({required UserData userData}) async {
    params = userData;
    return true;
  }
}

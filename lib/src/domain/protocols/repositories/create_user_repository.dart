import '../usecases/create_user_usecase.dart';

abstract class CreateUserRepository {
  Future<bool> create({required UserData userData});
}

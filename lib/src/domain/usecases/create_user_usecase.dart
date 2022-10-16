import 'package:dart_backend/src/domain/protocols/repositories/create_user_repository.dart';
import 'package:dart_backend/src/domain/protocols/usecases/create_user_usecase.dart';

class CreateUserUsecase implements CreateUser {
  final CreateUserRepository userRepository;

  CreateUserUsecase({required this.userRepository});

  @override
  Future<bool> execute({required UserData userData}) async {
    var result = await userRepository.create(userData: userData);
    return result;
  }
}

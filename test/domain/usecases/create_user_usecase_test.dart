import 'package:dart_backend/src/domain/protocols/usecases/create_user_usecase.dart';
import 'package:dart_backend/src/domain/usecases/create_user_usecase.dart';
import 'package:test/test.dart';

import '../mocks/repositories/user_repositories_mock.dart';

void main() {
  final userRepository = CreateUserRepositoryMock();
  final usecase = CreateUserUsecase(userRepository: userRepository);
  test('Guarantee Params is correct', () async {
    UserData params = {"name": "paulo"};
    await usecase.execute(userData: params);
    expect(userRepository.params, params);
  });
}

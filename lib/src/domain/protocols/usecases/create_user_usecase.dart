abstract class CreateUser {
  Future<bool> execute({required UserData userData});
}

typedef UserData = Map<String, dynamic>;

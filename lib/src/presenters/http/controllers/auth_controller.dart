import 'package:dart_backend/src/presenters/http/protocols/index.dart';

import '../helpers/http-helpers.dart';

class AuthController implements Controller {
  @override
  Future<HttpResponse> handle(HttpRequest httpRequest) async {
    return ok(body: {"msg": "ok"});
  }
}

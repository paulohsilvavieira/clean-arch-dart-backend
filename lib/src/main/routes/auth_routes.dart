import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'package:dart_backend/src/main/adapters/adapter_router.dart';
import 'package:dart_backend/src/main/factories/controllers/auth_controller_factory.dart';

class AuthResource extends Resource {
  @override
  List<Route> get routes => [
        Route.post('/auth/login', adapterRouter(authControllerFactory())),
      ];
}

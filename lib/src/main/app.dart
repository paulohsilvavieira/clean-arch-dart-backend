// ignore_for_file: unused_import

import 'package:shelf/shelf.dart';
import 'package:dart_backend/src/main/routes/auth_routes.dart';
import 'package:shelf_modular/shelf_modular.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        Route.resource(AuthResource()),
      ];
}

// ignore_for_file: unused_import

import 'package:dart_backend/src/main/app.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_modular/shelf_modular.dart';
import 'package:dotenv/dotenv.dart';

void main() async {
  var env = DotEnv(includePlatformEnvironment: true)..load();
  final modularHandler = Modular(
    module: AppModule(),
    middlewares: [
      logRequests(),
    ],
  );
  var server = await shelf_io.serve(
      modularHandler, '0.0.0.0', int.parse(env['PORT'].toString()));
  print('Servidor rodando - Host: ${server.address.address}:${server.port}');
}

import 'package:noticiario_app/app/domain/repository/home_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:noticiario_app/app/app_widget.dart';
import 'package:noticiario_app/app/pages/home/home_controller.dart';
import 'package:noticiario_app/app/pages/home/home_module.dart';
import 'package:noticiario_app/core/utils/http_client.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<HomeRepository>())),
        Bind((i) => HomeRepository(i.get<HttpClient>())),
        Bind((i) => HttpClient()),
      ];

  @override
  List<Router> get routers => [
      Router(Modular.initialRoute, module: HomeModule()),
    ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

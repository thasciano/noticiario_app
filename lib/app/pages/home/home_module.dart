import 'package:noticiario_app/app/app_module.dart';
import 'package:noticiario_app/app/pages/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:noticiario_app/app/pages/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(AppModule.to.get())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
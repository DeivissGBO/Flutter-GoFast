import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_gofast/app/app_controller.dart';
import 'package:flutter_gofast/app/app_widget.dart';
import 'package:flutter_gofast/app/modules/home/home_module.dart';
import 'package:flutter_gofast/app/modules/splash/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        Bind(
          (i) => AppController(),
        )
      ]; // utilizado para injeção de dependencia

  @override
  // TODO: implement bootstrap
  Widget get bootstrap => AppWidget(); //primeira aplicação que sera iniciada

  @override
  // TODO: implement routers
  List<Router> get routers => [
        Router(
          '/',
          child: (_, args) => SplashPage(),
          transition: TransitionType.noTransition,
        ),
        Router(
          '/home',
          module: HomeModule(),
        )
      ]; //aqui é definido as rotas nomeadas
}

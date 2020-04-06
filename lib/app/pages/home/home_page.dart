import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:noticiario_app/app/domain/models/noticia_model.dart';
import 'package:noticiario_app/app/widgets/autor_widget.dart';
import 'package:noticiario_app/core/values/colors.dart';
import 'package:noticiario_app/core/values/dimens.dart';
import 'home_controller.dart';


class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Lista de Autores"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: colorBackground,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(marginDefault),
                child: Text('Lista de autores de noticiarios: (${controller.noticias.length})', style: TextStyle(color: Colors.black),),
              ),
              Observer(
                builder: (context){
                  return controller.isLoading ?
                    Center(child: CircularProgressIndicator())
                  : Container(
                        height: MediaQuery.of(context).size.height,
                        child: RefreshIndicator(
                          onRefresh: () => controller.callNoticias(),
                          child: ListView.builder(
                          itemCount: controller.noticias.length,
                          itemBuilder: (_, index){
                            Noticia n = controller.noticias[index];
                            return AutorWidget(n: n);
                          },
                        ) ,
                        )     
                  );
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}



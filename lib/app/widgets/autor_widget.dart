import 'package:flutter/material.dart';
import 'package:noticiario_app/app/domain/models/noticia_model.dart';
import 'package:noticiario_app/core/values/colors.dart';

class AutorWidget extends StatelessWidget {
  const AutorWidget({
    Key key,
    @required this.n,
  }) : super(key: key);

  final Noticia n;

  @override
  Widget build(BuildContext context) {
    return Container (
      margin: EdgeInsets.fromLTRB(12, 0, 12, 12),
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(n.avatar),),
        title: Text(n.titulo, style: TextStyle(color: Colors.black),),
        subtitle: Text(n.email, style: TextStyle(color: Colors.black),),
      ),
      decoration: _decoration(),
    );
  }

  
  BoxDecoration _decoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        stops: [0.015, 0.015],
        colors: [colorPrimary, Colors.white],
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(4.0),
      ),
      boxShadow: [
        BoxShadow(
          color: grey,
          blurRadius: 6.0,
          spreadRadius: 0.0,
          offset: Offset(0.0, 0.0),
        ),
      ],
    );
  }
}
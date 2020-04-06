import 'dart:convert';

class Noticia {
    String id;
    String titulo;
    String imagem;
    String descricao;
    String autor;
    String email;
    String avatar;
    int gostei;
    bool marcado;

    Noticia({
        this.id,
        this.titulo,
        this.imagem,
        this.descricao,
        this.autor,
        this.email,
        this.avatar,
        this.gostei,
        this.marcado,
    });

    factory Noticia.fromRawJson(String str) => Noticia.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Noticia.fromJson(Map<String, dynamic> json) => Noticia(
        id: json["id"] == null ? null : json["id"],
        titulo: json["titulo"] == null ? null : json["titulo"],
        imagem: json["imagem"] == null ? null : json["imagem"],
        descricao: json["descricao"] == null ? null : json["descricao"],
        autor: json["autor"] == null ? null : json["autor"],
        email: json["email"] == null ? null : json["email"],
        avatar: json["avatar"] == null ? null : json["avatar"],
        gostei: json["gostei"] == null ? null : json["gostei"],
        marcado: json["marcado"] == null ? null : json["marcado"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "titulo": titulo == null ? null : titulo,
        "imagem": imagem == null ? null : imagem,
        "descricao": descricao == null ? null : descricao,
        "autor": autor == null ? null : autor,
        "email": email == null ? null : email,
        "avatar": avatar == null ? null : avatar,
        "gostei": gostei == null ? null : gostei,
        "marcado": marcado == null ? null : marcado,
    };
}

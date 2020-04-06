import 'package:mobx/mobx.dart';
import 'package:noticiario_app/app/domain/models/noticia_model.dart';
import 'package:noticiario_app/app/domain/repository/home_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final HomeRepository homeRepository;
  
  _HomeControllerBase(this.homeRepository){
    callNoticias();
  }
  
  @observable
  ObservableList<Noticia> noticias = ObservableList<Noticia>();

  @observable
  bool isLoading = false;

  @action
  _setLoading(bool value) => isLoading = value;

  @action
  callNoticias() async {
    _setLoading(true);
    try {
      await homeRepository.callNoticias().then((result) {   
        noticias.addAll(result.data);
      });
    } finally {
      _setLoading(false);
    }
  }
}

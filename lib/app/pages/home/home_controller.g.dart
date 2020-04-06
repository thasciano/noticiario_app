// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$noticiasAtom = Atom(name: '_HomeControllerBase.noticias');

  @override
  ObservableList<Noticia> get noticias {
    _$noticiasAtom.context.enforceReadPolicy(_$noticiasAtom);
    _$noticiasAtom.reportObserved();
    return super.noticias;
  }

  @override
  set noticias(ObservableList<Noticia> value) {
    _$noticiasAtom.context.conditionallyRunInAction(() {
      super.noticias = value;
      _$noticiasAtom.reportChanged();
    }, _$noticiasAtom, name: '${_$noticiasAtom.name}_set');
  }

  final _$isLoadingAtom = Atom(name: '_HomeControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$callNoticiasAsyncAction = AsyncAction('callNoticias');

  @override
  Future callNoticias() {
    return _$callNoticiasAsyncAction.run(() => super.callNoticias());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic _setLoading(bool value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super._setLoading(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'noticias: ${noticias.toString()},isLoading: ${isLoading.toString()}';
    return '{$string}';
  }
}

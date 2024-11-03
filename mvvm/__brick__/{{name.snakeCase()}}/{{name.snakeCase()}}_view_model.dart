import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part '{{name.snakeCase()}}_state.dart';

@injectable
class {{name.pascalCase()}}ViewModel {
  final _state = ValueNotifier<{{name.pascalCase()}}State>(const SuccessState());

  ValueListenable<{{name.pascalCase()}}State> get state => _state;

  {{name.pascalCase()}}ViewModel();

  void init() {}
}

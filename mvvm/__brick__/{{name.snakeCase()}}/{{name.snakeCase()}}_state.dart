part of '{{name.snakeCase()}}_view_model.dart';

sealed class {{name.pascalCase()}}State {
  const {{name.pascalCase()}}State();
}

final class SuccessState extends {{name.pascalCase()}}State {
  const SuccessState();
}

final class LoadingState extends {{name.pascalCase()}}State {
  const LoadingState();
}

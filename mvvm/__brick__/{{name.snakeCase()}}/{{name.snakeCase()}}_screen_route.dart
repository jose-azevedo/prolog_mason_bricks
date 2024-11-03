import 'package:prolog_app/core/routing/prolog_route_config.dart';

import '{{name.snakeCase()}}_screen.dart';

final class {{name.pascalCase()}}ScreenRoute extends PrologNoPayloadRouteConfig {
  const {{name.pascalCase()}}ScreenRoute()
      : super(
          name: '{{name.pascalCase()}}Screen',
          path: '{{name.paramCase()}}',
          builder: {{name.pascalCase()}}Screen.new,
        );
}

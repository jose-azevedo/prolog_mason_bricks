import 'package:injectable/injectable.dart';

import 'package:prolog_app/core/network/prolog_http_client.dart';
import 'package:prolog_app/core/network/prolog_network_constants.dart';
import '{{name.snakeCase()}}_repository.dart';

@Singleton(as: {{name.pascalCase()}}Repository)
class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  static const _baseUrl = '${PrologNetworkConstants.wsV3Prefix}/';
  final PrologHttpClient _httpClient;

  const {{name.pascalCase()}}RepositoryImpl(this._httpClient);
}

import 'package:flutter/material.dart';

import 'package:prolog_app/commons/widget/app_bar/prolog_app_bar.dart';
import 'package:prolog_app/commons/widget/prolog_loading.dart';
import 'package:prolog_app/commons/widget/prolog_scaffold.dart';
import 'package:prolog_app/core/di/injectable.dart';
import '{{name.snakeCase()}}_view_model.dart';

class {{name.pascalCase()}}Screen extends StatefulWidget {
  const {{name.pascalCase()}}Screen({super.key});

  @override
  State<{{name.pascalCase()}}Screen> createState() => _{{name.pascalCase()}}ScreenState();
}

class _{{name.pascalCase()}}ScreenState extends State<{{name.pascalCase()}}Screen> {
  final _vm = getIt<{{name.pascalCase()}}ViewModel>();

  @override
  void initState() {
    super.initState();
    _vm.init();
  }

  @override
  Widget build(BuildContext context) {
    return PrologScaffold(
      appBar: PrologAppBar(title: ''),
      body: ValueListenableBuilder(
        valueListenable: _vm.state,
        builder: (_, state, __) {
          return switch (state) {
            LoadingState() => const PrologLoading(),
            SuccessState() => const Placeholder(),
          };
        },
      ),
    );
  }
}

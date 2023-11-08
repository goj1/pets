import 'package:pets/infra/store/providers.dart';
import 'package:pets/shared/ui/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  setupProviders();

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => initializeDateFormatting('pt_BR', null).then((_) => runApp(const App())));
}

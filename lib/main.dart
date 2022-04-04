import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/routes/router.gr.dart';
import 'package:wikimsglow/core/theme/my_themes.dart';
import 'package:wikimsglow/features/login/presentation/provider/login_notifier.dart';
import 'package:wikimsglow/injection.dart' as di;

void main() {
  di.init();
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => di.locator<LoginNotifier>()),
      ],
      child: MaterialApp.router(
        title: AppsConfig.appTitle,
        theme: myThemes(),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}

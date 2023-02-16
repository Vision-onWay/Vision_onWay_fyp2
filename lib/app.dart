import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:sign_in/ui/main_page.dart';

class CameraAccess extends HookWidget {
  const CameraAccess({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'MyApp',
      theme: ThemeData.from(
        colorScheme: const ColorScheme.dark(),
      ),
      navigatorKey: GlobalKey<NavigatorState>(),
      initialRoute: MainPage.routeName,
      routes: {
        MainPage.routeName: (context) => const MainPage(),
      },
    );
  }
}

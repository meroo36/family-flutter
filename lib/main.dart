import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/core_shelf.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  var prefs = await SharedPreferences.getInstance();
  var token = prefs.getString(PreferencesKeys.ACCESS_TOKEN.toString());

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(token),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp(this.token);
  final String? token;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'family_flutter',
      debugShowCheckedModeBanner: false,
      theme: getLightTheme(),
      onGenerateRoute: NavigationRoute.instance.generateRouteLoggedIn,
      navigatorKey: NavigationService.instance.navigatorKey,
    );
  }
}

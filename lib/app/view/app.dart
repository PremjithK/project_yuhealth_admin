import 'package:flutter/material.dart';
import 'package:yu_health_admin/custom_widgets/theme.dart';
import 'package:yu_health_admin/dashboard_page/dashboard_page.dart';
import 'package:yu_health_admin/l10n/l10n.dart';
import 'package:yu_health_admin/login_page/view/login_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: darkTheme,
      theme: lightTheme,
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: DashboardPage(),
    );
  }
}

import 'package:flutter/widgets.dart';
import 'package:miinii/pages/home_page.dart';
import 'package:miinii/pages/loading_page.dart';
import 'package:miinii/pages/login_page.dart';
import 'package:miinii/pages/register_page.dart';
import 'package:miinii/pages/users_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  'users': (_) => const UsersPage(),
  'home': (_) => const HomePage(),
  'loading': (_) => const LoadingPage(),
  'register': (_) => const RegisterPage(),
  'login': (_) => const LoginPage(),
};

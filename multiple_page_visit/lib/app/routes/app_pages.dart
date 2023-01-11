import 'package:multiple_page_visit/app/routes/app_routes.dart';
import 'package:multiple_page_visit/app/ui/registration_page.dart';

import '../ui/log_in.dart';
import '../ui/simple_ui.dart';

abstract class AppPages {
  static final routes = {
    AppRoutes.LOGIN: (context) => LoginPage(),
    AppRoutes.REGISTRATION: (context) => RegistrationPage(),
    AppRoutes.HOME: (context) => Homepage()
  };
}

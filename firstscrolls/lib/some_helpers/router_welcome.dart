import 'package:firstscrolls/routes/names.dart';
import 'package:firstscrolls/some_helpers/config.dart';
import 'package:firstscrolls/some_helpers/user_login_reponse_entity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteWelcomeMiddleWare extends GetMiddleware {
  @override
  int? priority = 0;

  RouteWelcomeMiddleWare({required this.priority});

  //@override
  // RouteSettings? redirect(String? route) {
  //   print(ConfigStore.to.isFirstOpen);
  //   if (ConfigStore.to.isFirstOpen == false) {
  //     return null;
  //   } else if (UserStore.to.isLogin == true) {
  //     return const RouteSettings(name: AppRoutes.Application);
  //   } else {
  //     return const RouteSettings(name: AppRoutes.SIGN_IN);
  //   }
  // }
}

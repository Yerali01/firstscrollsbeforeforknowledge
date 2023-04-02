import 'package:firstscrolls/WelcomePage/bindings.dart';
import 'package:firstscrolls/WelcomePage/view.dart';
import 'package:firstscrolls/routes/names.dart';
import 'package:firstscrolls/some_helpers/router_welcome.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  // static const Application = '/application';
  // static final RouteObserver<Route> observer = RouteObservers();
  // static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
        name: AppRoutes.INITIAL,
        page: () => const WelcomePage(),
        binding: WelcomeBinding(),
        middlewares: [RouteWelcomeMiddleWare(priority: 1)]),
    // GetPage(
    //   name: AppRoutes.SIGN_IN,
    //   page: () => const SigninPage(),
    //   binding: SignInBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.Application,
    //   page: () => const ApplicationPage(),
    //   binding: ApplicationBinding(),
    //   middlewares: const [],
    // ),
    // GetPage(
    //   name: AppRoutes.Contact,
    //   page: () => const ContactPage(),
    //   binding: ContactBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.Chat,
    //   page: () => const ChatPage(),
    //   binding: ChatBinding(),
    // )
  ];
}

import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import '../presentation/main_profile_one_container_screen/binding/main_profile_one_container_binding.dart';
import '../presentation/main_profile_one_container_screen/main_profile_one_container_screen.dart';
import '../presentation/main_profile_three_screen/binding/main_profile_three_binding.dart';
import '../presentation/main_profile_three_screen/main_profile_three_screen.dart';
import '../presentation/main_profile_two_screen/binding/main_profile_two_binding.dart';
import '../presentation/main_profile_two_screen/main_profile_two_screen.dart';
import '../presentation/no_cards_screen/binding/no_cards_binding.dart';
import '../presentation/no_cards_screen/no_cards_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String mainProfileOneContainerScreen =
      '/main_profile_one_container_screen';

  static const String mainProfileOnePage = '/main_profile_one_page';

  static const String mainProfileTwoScreen = '/main_profile_two_screen';

  static const String mainProfileThreeScreen = '/main_profile_three_screen';

  static const String noCardsScreen = '/no_cards_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: mainProfileOneContainerScreen,
      page: () => MainProfileOneContainerScreen(),
      bindings: [MainProfileOneContainerBinding()],
    ),
    GetPage(
      name: mainProfileTwoScreen,
      page: () => MainProfileTwoScreen(),
      bindings: [MainProfileTwoBinding()],
    ),
    GetPage(
      name: mainProfileThreeScreen,
      page: () => MainProfileThreeScreen(),
      bindings: [MainProfileThreeBinding()],
    ),
    GetPage(
      name: noCardsScreen,
      page: () => NoCardsScreen(),
      bindings: [NoCardsBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => NoCardsScreen(),
      bindings: [NoCardsBinding()],
    )
  ];
}

import '../../../core/app_export.dart';
import '../controller/main_profile_two_controller.dart';

/// A binding class for the MainProfileTwoScreen.
///
/// This class ensures that the MainProfileTwoController is created when the
/// MainProfileTwoScreen is first loaded.
class MainProfileTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainProfileTwoController());
  }
}

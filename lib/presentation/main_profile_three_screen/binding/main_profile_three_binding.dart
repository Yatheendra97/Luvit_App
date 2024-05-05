import '../../../core/app_export.dart';
import '../controller/main_profile_three_controller.dart';

/// A binding class for the MainProfileThreeScreen.
///
/// This class ensures that the MainProfileThreeController is created when the
/// MainProfileThreeScreen is first loaded.
class MainProfileThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainProfileThreeController());
  }
}

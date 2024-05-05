import '../../../core/app_export.dart';
import '../controller/main_profile_one_container_controller.dart';

/// A binding class for the MainProfileOneContainerScreen.
///
/// This class ensures that the MainProfileOneContainerController is created when the
/// MainProfileOneContainerScreen is first loaded.
class MainProfileOneContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainProfileOneContainerController());
  }
}

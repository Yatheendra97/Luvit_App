import '../../../core/app_export.dart';
import '../models/main_profile_one_container_model.dart';

/// A controller class for the MainProfileOneContainerScreen.
///
/// This class manages the state of the MainProfileOneContainerScreen, including the
/// current mainProfileOneContainerModelObj
class MainProfileOneContainerController extends GetxController {
  Rx<MainProfileOneContainerModel> mainProfileOneContainerModelObj =
      MainProfileOneContainerModel().obs;
}

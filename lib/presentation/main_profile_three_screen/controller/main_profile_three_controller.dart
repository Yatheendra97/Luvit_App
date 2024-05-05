import '../../../core/app_export.dart';
import '../models/main_profile_three_model.dart';

/// A controller class for the MainProfileThreeScreen.
///
/// This class manages the state of the MainProfileThreeScreen, including the
/// current mainProfileThreeModelObj
class MainProfileThreeController extends GetxController {
  Rx<MainProfileThreeModel> mainProfileThreeModelObj =
      MainProfileThreeModel().obs;
}

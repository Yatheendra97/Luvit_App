import '../../../core/app_export.dart';
import '../models/main_profile_two_model.dart';

/// A controller class for the MainProfileTwoScreen.
///
/// This class manages the state of the MainProfileTwoScreen, including the
/// current mainProfileTwoModelObj
class MainProfileTwoController extends GetxController {
  Rx<MainProfileTwoModel> mainProfileTwoModelObj = MainProfileTwoModel().obs;
}

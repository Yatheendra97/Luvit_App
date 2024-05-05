import '../../../core/app_export.dart';
import '../models/main_profile_one_model.dart';

/// A controller class for the MainProfileOnePage.
///
/// This class manages the state of the MainProfileOnePage, including the
/// current mainProfileOneModelObj
class MainProfileOneController extends GetxController {
  MainProfileOneController(this.mainProfileOneModelObj);

  Rx<MainProfileOneModel> mainProfileOneModelObj;
}

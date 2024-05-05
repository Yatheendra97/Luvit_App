import '../../../core/app_export.dart';
import '../models/no_cards_model.dart';

/// A controller class for the NoCardsScreen.
///
/// This class manages the state of the NoCardsScreen, including the
/// current noCardsModelObj
class NoCardsController extends GetxController {
  Rx<NoCardsModel> noCardsModelObj = NoCardsModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.mainProfileOneContainerScreen,
      );
    });
  }
}

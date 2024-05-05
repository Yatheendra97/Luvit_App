import '../../../core/app_export.dart';
import '../controller/no_cards_controller.dart';

/// A binding class for the NoCardsScreen.
///
/// This class ensures that the NoCardsController is created when the
/// NoCardsScreen is first loaded.
class NoCardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoCardsController());
  }
}

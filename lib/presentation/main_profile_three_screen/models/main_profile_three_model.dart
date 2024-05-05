import '../../../core/app_export.dart';
import 'chipviewclose_item_model.dart';

/// This class defines the variables used in the [main_profile_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MainProfileThreeModel {
  Rx<List<ChipviewcloseItemModel>> chipviewcloseItemList =
      Rx(List.generate(5, (index) => ChipviewcloseItemModel()));
}

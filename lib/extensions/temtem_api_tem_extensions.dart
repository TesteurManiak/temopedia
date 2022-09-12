import 'package:temopedia/Database/database_helper.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';
import 'package:temopedia/utils/Globals.dart' as globals;
import 'bool_extensions.dart';

extension TemTemApiTemModifier on TemTemApiTem {
  Map<String, dynamic> toSqlite() {
    return {
      DatabaseHelper.columnNumber: number,
      DatabaseHelper.columnFavorite: owned.toInt(),
    };
  }

  bool get owned => globals.favorites.contains(this);
}

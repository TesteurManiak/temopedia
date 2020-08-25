import 'package:temopedia/Database/DatabaseHelper.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

extension TemTemApiTemModifier on TemTemApiTem {
  Map<String, dynamic> toSqlite() {
    return {
      DatabaseHelper.columnNumber: this.number,
      DatabaseHelper.columnFavorite: this.owned,
    };
  }

  bool get owned => globals.favorites.contains(this);
}

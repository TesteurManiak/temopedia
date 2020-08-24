import 'package:temopedia/Database/DatabaseHelper.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

extension TemTemApiTemModifier on TemTemApiTem {
  Map<String, dynamic> toSqlite() {
    return {
      DatabaseHelper.columnNumber: this.number,
      DatabaseHelper.columnFavorite: false,
    };
  }
}

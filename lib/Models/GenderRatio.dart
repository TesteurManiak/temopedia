import 'package:temopedia/utils/JsonHelper.dart';

class GenderRatio {
  final double male;
  final double female;

  GenderRatio({this.male, this.female});

  factory GenderRatio.fromJson(Map<String, dynamic> json) => GenderRatio(
      male: double.parse(json[JsonHelper.male].toString()),
      female: double.parse(json[JsonHelper.female].toString()));
}

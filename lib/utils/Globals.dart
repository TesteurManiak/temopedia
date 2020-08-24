import 'package:temopedia/Models/Weakness.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

List<TemTemApiTem> temtems = [];
List<TemTemApiType> types = [];
List<TemTemApiTraits> traits = [];
List<TemTemApiTechnique> techiques = [];
List<TemTemApiLocation> locations = [];
List<Weakness> weaknesses = [];

Map<String, int> maxStats = {
  "hp": 0,
  "sta": 0,
  "spd": 0,
  "atk": 0,
  "def": 0,
  "spatk": 0,
  "spdef": 0,
};

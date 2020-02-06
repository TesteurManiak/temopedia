import 'package:temopedia/Models/Technique.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/Models/Traits.dart';
import 'package:temopedia/Models/Type.dart';

List<Temtem> temtems = [];
List<TemType> types = [];
List<Traits> traits = [];
List<Technique> techiques = [];

Map<String, int> maxStats = {
  "hp": 0,
  "sta": 0,
  "spd": 0,
  "atk": 0,
  "def": 0,
  "spatk": 0,
  "spdef": 0,
};
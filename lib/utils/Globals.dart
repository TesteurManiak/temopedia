import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../Models/weakness.dart';

List<TemTemApiTem> temtems = [];
List<TemTemApiTem> favorites = [];
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

extension MapModifier on Map<String, int> {
  set hp(int val) => this['hp'] = val;
  int get hp => this['hp']!;

  set sta(int val) => this['sta'] = val;
  int get sta => this['sta']!;

  set spd(int val) => this['spd'] = val;
  int get spd => this['spd']!;

  set atk(int val) => this['atk'] = val;
  int get atk => this['atk']!;

  set def(int val) => this['def'] = val;
  int get def => this['def']!;

  set spatk(int val) => this['spatk'] = val;
  int get spatk => this['spatk']!;

  set spdef(int val) => this['spdef'] = val;
  int get spdef => this['spdef']!;
}

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../utils/globals.dart' as globals;

class SearchBloc {
  final TextEditingController _filter = TextEditingController();
  TextEditingController get filter => _filter;

  final BehaviorSubject<String> _searchTextController =
      BehaviorSubject<String>.seeded('');
  Stream<String> get onSearchTextChanged => _searchTextController.stream;
  String get searchText => _searchTextController.value;

  final BehaviorSubject<List<TemTemApiTem>> _filteredTemtemsController =
      BehaviorSubject<List<TemTemApiTem>>.seeded([]);
  Stream<List<TemTemApiTem>> get onFilteredTemtemsChanged =>
      _filteredTemtemsController.stream;
  List<TemTemApiTem> get filteredTemtems => _filteredTemtemsController.value;

  final BehaviorSubject<List<String>> _selectedTypesController =
      BehaviorSubject<List<String>>.seeded([]);
  Stream<List<String>> get onSelectedTypesChanged =>
      _selectedTypesController.stream;
  List<String> get selectedTypes => _selectedTypesController.value;

  List<TemTemApiTem> _unusedTemTems = [];
  bool _isFavSelected = false;

  void dispose() {
    _searchTextController.close();
    _filteredTemtemsController.close();
    _selectedTypesController.close();

    _filter.removeListener(_filterListener);
    _filter.dispose();
  }

  void initState() {
    _filter.addListener(_filterListener);
  }

  void _filterListener() {
    if (filter.text.isEmpty) {
      _searchTextController.sink.add('');
    } else {
      _searchTextController.sink.add(_filter.text);
    }
    filterList();
  }

  void resetFilteredList() {
    _filteredTemtemsController.sink.add(globals.temtems);
    _unusedTemTems.clear();
    _selectedTypesController.sink.add([]);
    _searchTextController.sink.add('');
  }

  void resetTextSearch() {
    _searchTextController.sink.add('');
    _filter.clear();
    filterList();
  }

  void firstInitFilteredTemtems() {
    _filteredTemtemsController.sink.add(globals.temtems);
  }

  void filterList() {
    List<TemTemApiTem> tmp = [];
    List<TemTemApiTem> tmpUnused = [];

    final completeList =
        List<TemTemApiTem>.from(filteredTemtems + _unusedTemTems);
    for (final tem in completeList) {
      bool hasType = selectedTypes.isEmpty;
      for (final type in tem.types) {
        if (selectedTypes.contains(type.name)) hasType = true;
      }
      if (hasType && tem.name.toLowerCase().contains(searchText)) {
        tmp.add(tem);
      } else {
        tmpUnused.add(tem);
      }
    }
    tmp.sort((a, b) => a.number.compareTo(b.number));
    _filteredTemtemsController.sink.add(tmp);
    _unusedTemTems = tmpUnused;
  }

  void favoriteFilter() {
    if (_isFavSelected) {
      _isFavSelected = false;
      _filteredTemtemsController.sink.add(globals.temtems);
    } else {
      _isFavSelected = true;
      _filteredTemtemsController.sink.add(globals.favorites);
    }
    _unusedTemTems.clear();
    filterList();
  }

  void addTypeFilter(String filter) {
    List<String> tmp = selectedTypes;
    tmp.add(filter);
    _selectedTypesController.sink.add(tmp);
    filterList();
  }

  void removeTypeFilter(String filter) {
    List<String> tmp = selectedTypes;
    tmp.remove(filter);
    _selectedTypesController.sink.add(tmp);
    filterList();
  }
}

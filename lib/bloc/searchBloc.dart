import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:temopedia/bloc/bloc.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class SearchBloc implements BlocBase {
  TextEditingController _filter = TextEditingController();
  TextEditingController get filter => _filter;

  BehaviorSubject<String> _searchTextController =
      BehaviorSubject<String>.seeded('');
  Stream<String> get onSearchTextChanged => _searchTextController.stream;
  String get searchText => _searchTextController.value;

  BehaviorSubject<List<TemTemApiTem>> _filteredTemtemsController =
      BehaviorSubject<List<TemTemApiTem>>.seeded(null);
  Stream<List<TemTemApiTem>> get onFilteredTemtemsChanged =>
      _filteredTemtemsController.stream;
  List<TemTemApiTem> get filteredTemtems => _filteredTemtemsController.value;

  BehaviorSubject<List<String>> _selectedTypesController =
      BehaviorSubject<List<String>>.seeded([]);
  Stream<List<String>> get onSelectedTypesChanged =>
      _selectedTypesController.stream;
  List<String> get selectedTypes => _selectedTypesController.value;

  @override
  void dispose() {
    _searchTextController.close();
    _filteredTemtemsController.close();
    _selectedTypesController.close();

    _filter.removeListener(_filterListener);
    _filter.dispose();
  }

  @override
  void initState() {
    _filter.addListener(_filterListener);
  }

  void _filterListener() {
    if (filter.text.isEmpty) {
      _searchTextController.sink.add('');
      _filteredTemtemsController.sink.add(globals.temtems);
    } else
      _searchTextController.sink.add(_filter.text);
    filterList();
  }

  void resetFilteredList() {
    _filteredTemtemsController.sink.add(globals.temtems);
    _selectedTypesController.sink.add([]);
    _searchTextController.sink.add('');
  }

  void resetTextSearch() {
    _filteredTemtemsController.sink.add(globals.temtems);
    _searchTextController.sink.add('');
    _filter.clear();
  }

  void firstInitFilteredTemtems() {
    if (filteredTemtems == null) {
      _filteredTemtemsController.sink.add(globals.temtems);
    }
  }

  void filterList() {
    _filteredTemtemsController.sink.add(globals.temtems);
    List<TemTemApiTem> tmp = [];
    for (final tem in filteredTemtems) {
      if (tem.name.toLowerCase().contains(searchText)) tmp.add(tem);
    }
    _filteredTemtemsController.sink.add(tmp);
  }
}

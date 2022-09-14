import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

part 'temtem_types_state.dart';

class TemtemTypesCubit extends Cubit<TemtemTypesState> {
  TemtemTypesCubit() : super(const TemtemTypesLoading());
}

import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'temtem.g.dart';

@Collection()
class Temtem extends Equatable {
  @Id()
  final int number;

  final String name;

  const Temtem({
    required this.number,
    required this.name,
  });

  @override
  List<Object?> get props => [number, name];
}

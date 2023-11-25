import 'package:equatable/equatable.dart';

class HomeCubitState extends Equatable {
  final int btnIndex;

  const HomeCubitState({required this.btnIndex});

  @override
  List<Object?> get props => [btnIndex];
}

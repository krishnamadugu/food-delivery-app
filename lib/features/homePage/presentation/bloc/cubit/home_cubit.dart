import 'package:bloc/bloc.dart';
import 'package:food_delivery_app/features/homePage/presentation/bloc/cubit/home_cubit_state.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit() : super(const HomeCubitState(btnIndex: 0));

  void activeBottomNavIcon(int btnIndex) => emit(
        HomeCubitState(
          btnIndex: btnIndex,
        ),
      );
}

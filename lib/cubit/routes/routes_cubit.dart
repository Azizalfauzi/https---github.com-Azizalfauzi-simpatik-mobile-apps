import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'routes_state.dart';

class RoutesCubit extends Cubit<RoutesState> {
  RoutesCubit() : super(RoutesSplashScreen());
  Stream<RoutesState> mapEventToState(RoutesState state) async* {
    if (state is RoutesSplashScreen) {
      emit(RoutesSplashScreen());
    } else if (state is RoutesOnboardingScreen) {
      emit(RoutesOnboardingScreen());
    } else if (state is RoutesLoginScreen) {
      emit(RoutesLoginScreen());
    } else if (state is RoutesRegisterScreen) {
      emit(RoutesRegisterScreen());
    } else if (state is RoutesMainPage) {
      const int initial = 0;
      emit(const RoutesMainPage(initial));
    } else {
      emit(RoutesLoginScreen());
    }
  }
}
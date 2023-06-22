import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial()) {
    screen();
  }

  Future<void> screen() async {
    await Future.delayed(const Duration(seconds: 3)).then((value) {
      emit(SplashLoaded());
    });
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kafiil_task/features/registeration/bloc/register_state.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  final Dio dio = Dio();
  final PageController _pageController = PageController(initialPage: 0);

  bool _showPassword = true, _showConfirmPassword = true, _currentStep = true;
  int _currentPage = 0;

  bool get showPassword => _showPassword;

  bool get currentStep => _currentStep;

  bool get showConfirmPassword => _showConfirmPassword;

  int get currentPage => _currentPage;

  PageController get pageController => _pageController;

  void toggleShowPassword() {
    _showPassword = !_showPassword;
    emit(ShowPassword());
  }

  void toggleShowConfirmPassword() {
    _showConfirmPassword = !_showConfirmPassword;
    emit(ShowConfirmPassword());
  }

  void toStepTwo(bool nextStep) {
    _currentStep = nextStep;
    emit(ChangeStepperValue());
  }

  void jumpToPage(int? pageNumber) async {
    if (pageNumber != null) _currentPage = pageNumber;
    _pageController.jumpToPage(_currentPage);
    emit(JumpToPage());
  }

  bool _facebook = true, _twitter = true, _linkedIn = true;

  bool get facebook => _facebook;

  bool get twitter => _twitter;

  bool get linkedIn => _linkedIn;

  void toggleFacebook() {
    _facebook = !_facebook;
    emit(Facebook());
  }

  void toggleTwitter() {
    _twitter = !_twitter;
    emit(Twitter());
  }

  void toggleLinkedIn() {
    _linkedIn = !_linkedIn;
    emit(LinkedIn());
  }

  void clear() {
    _pageController.dispose();
    _currentStep = true;
    _currentPage = 0;
    _showPassword = false;
    _showConfirmPassword = false;
  }
}

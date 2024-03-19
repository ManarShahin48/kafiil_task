abstract class RegisterStates {
  const RegisterStates();
}

class RegisterInitial extends RegisterStates {}

class ShowPassword extends RegisterStates {}

class ShowConfirmPassword extends RegisterStates {}

class ChangeRadioValue extends RegisterStates {}

class ChangeStepperValue extends RegisterStates {}

class JumpToPage extends RegisterStates {}

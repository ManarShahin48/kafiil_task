abstract class LoginStates {
  const LoginStates();
}

class LoginInitial extends LoginStates {}

class ShowPassword extends LoginStates {}

class GetRemember extends LoginStates {}

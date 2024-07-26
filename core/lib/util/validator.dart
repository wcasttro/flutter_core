const patternEmail =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

String? validateEmail(String? email) {
  bool isValite = RegExp(patternEmail).hasMatch(email ?? '');
  if (isValite) {
    return null;
  }
  return 'E-mail inválido';
}

String? validatePassword(String? password) {
  if (password != null && password.length >= 8) {
    return null;
  }
  return 'A senha deve ter pelo menos 8 caracteres';
}

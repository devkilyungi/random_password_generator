import 'dart:math';

void main() {
  print(generateRandomPassword());
}

String generateRandomPassword() {
  List alphabetLower = 'abcdefghijklmnopqrstuvwxyz'.split('');
  List alphabetUpper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('');
  List numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  List specialCharacters = ['@', '.', '_', '#', '\$', '&', '(', ')'];

  List<String> password = [];

  for (int i = 0; i < 16; i++) {
    int random = Random().nextInt(4);

    switch (random) {
      case 0:
        password.add(alphabetLower[Random().nextInt(alphabetLower.length)]);
        break;
      case 1:
        password.add(alphabetUpper[Random().nextInt(alphabetUpper.length)]);
        break;
      case 2:
        password.add(numbers[Random().nextInt(numbers.length)].toString());
        break;
      case 3:
        password
            .add(specialCharacters[Random().nextInt(specialCharacters.length)]);
        break;
    }
  }

  return password.join('');
}

Map<int, String> hexReference = {
  10: 'A',
  11: 'B',
  12: 'C',
  13: 'D',
  14: 'E',
  15: 'F',
};

String convertSingleColor(int color) {
  int secondInt = color % 16;
  String secondLetter =
      secondInt < 10 ? secondInt.toString() : hexReference[secondInt]!;

  int firstInt = (color / 16).floor() % 16;
  String firstLetter =
      firstInt < 10 ? firstInt.toString() : hexReference[firstInt]!;

  String colorHex = '$firstLetter$secondLetter';

  return '$colorHex';
}

String convert(int red, int green, int blue) {
  // for red
  String redHex = convertSingleColor(red);
  String greenHex = convertSingleColor(green);
  String blueHex = convertSingleColor(blue);

  return '$redHex$greenHex$blueHex';
}

void main() {
  String answer = convert(0, 128, 105);
  print(answer);
}

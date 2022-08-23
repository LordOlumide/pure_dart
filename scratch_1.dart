class Solution {
  Map<String, int> romanNumerals = {
    'M': 1000,
    'D': 500,
    'C': 100,
    'L': 50,
    'X': 10,
    'V': 5,
    'I': 1
  };

  List<String> possibleLetters = [
    'I',
    'II',
    'III',
    'IV',
    'V',
    'VI',
    'VII',
    'VIII',
    'IX',
    'X',
    'XX',
    'XXX',
    'XV',
    'V',
    'VX',
    'VXX',
    'VXXX',
    'XC',
    'C',
    'CX',
    'CXX',
    'CXXX',
  ];

  int romanToInt(String s) {
    int output = 0;

    if ((s.length < 1 || s.length > 15) ||
        s.split('').every((element) => !romanNumerals.keys.contains(element))) {
      return 401;
    }

    List<String> letters = s.split('');

    String nextLetter = '';

    for (int stringIndex = 0; stringIndex < letters.length; stringIndex++) {
      output += romanNumerals[letters[stringIndex]]!;

      nextLetter = letters[stringIndex];
    }

    return output;
  }
}

void main() {
  String num1 = 'III';
  String num2 = 'LVIII';
  String num3 = 'MCMXCIV';

  Solution solution = Solution();

  for (String input in [num1, num2, num3]) {
    print(solution.romanToInt(input));
  }
}

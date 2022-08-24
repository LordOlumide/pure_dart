class Solution {
  Map<String, int> numeralsMap = {
    'M': 1000,
    'D': 500,
    'C': 100,
    'L': 50,
    'X': 10,
    'V': 5,
    'I': 1
  };

  List<String> numerals = ['M', 'D', 'C', 'L', 'X', 'V', 'I'];

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

    List a = ['a', 'b', 'c'];
    print(a[1 + 1]);

    // test for constraints
    if ((s.length < 1 || s.length > 15) ||
        s.split('').every((element) => !numeralsMap.keys.contains(element))) {
      return 401;
    }

    final List<String> letters = s.split('');

    String letter = letters[0];
    String nextLetter = letters[1];

    String tempSubtract = '';
    for (int currentIndex = 0; currentIndex < letters.length; currentIndex++) {
      letter = letters[currentIndex];
      if (currentIndex != letters.length) {
        nextLetter = letters[currentIndex + 1];
      }

      if (numerals.indexOf(letter) > numerals.indexOf(nextLetter)) {
        output += numeralsMap[letter]!;
      }
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

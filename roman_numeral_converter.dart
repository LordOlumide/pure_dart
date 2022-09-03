/// Completed

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

  int romanToInt(String s) {
    int _output = 0;

    int currentIndex = 0;
    while (currentIndex < s.length) {
      String letter = s[currentIndex];
      String nextLetter =
          currentIndex < s.length - 1 ? s[currentIndex + 1] : s[s.length - 1];

      if (numeralsMap[letter]! >= numeralsMap[nextLetter]!) {
        _output += numeralsMap[letter]!;
        currentIndex += 1;
      } else {
        _output += (numeralsMap[nextLetter]! - numeralsMap[letter]!);
        currentIndex += 2;
      }
    }

    return _output;
  }
}

void main() {
  String num0 = 'IV';
  String num1 = 'III';
  String num2 = 'LVIII';
  String num3 = 'MCMXCIV';

  Solution solution = Solution();

  for (String input in [num0, num1, num2, num3]) {
    print(solution.romanToInt(input));
  }
}

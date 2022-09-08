class Solution {
  List<int> numsSameConsecDiff(int n, int k) {
    List<int> output = [];
    // List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

    void checkNumber(number) {
      String numberText = number.toString();
      for (int a = 0; a < numberText.length - 1; a++) {
        if ((int.parse(numberText[a + 1]) - int.parse(numberText[a]) != k) &&
            (int.parse(numberText[a]) - int.parse(numberText[a + 1]) != k)) {
          return;
        }
      }
      output.add(number);
    }

    for (int i = int.parse('${'1' + ('0' * (n - 1))}');
        i <= int.parse('${'9' * n}');
        i++) {
      checkNumber(i);
    }

    return output;
  }
}

void main() {
  int n = 3; // 2 <= n <= 9
  int k = 7; // 0 <= k <= 9
  // output = [181, 292, 707, 818, 929]

  print(Solution().numsSameConsecDiff(n, k));
}

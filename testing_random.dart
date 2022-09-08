/* 
 * Just checking to see how random Random().nextInt() truly is.
 * I wonder what the average variance and standard deviation are.
 */

import 'dart:math';

void main() {
  int oneCount = 0;
  int twoCount = 0;
  int threeCount = 0;
  int fourCount = 0;
  int fiveCount = 0;

  int randomCall() {
    return Random().nextInt(5) + 1;
  }

  for (int i = 0; i < 500000; i++) {
    int temp = randomCall();
    if (temp == 1) {
      oneCount++;
    } else if (temp == 2) {
      twoCount++;
    } else if (temp == 3) {
      threeCount++;
    } else if (temp == 4) {
      fourCount++;
    } else if (temp == 5) {
      fiveCount++;
    } else {
      print('random range error');
    }
  }
  print(
      'ones: $oneCount, two: $twoCount, three: $threeCount, four: $fourCount, five: $fiveCount');
}

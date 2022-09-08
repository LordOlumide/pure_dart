// Completed

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> seen = {};
    int remaining;

    for (int i = 0; i < nums.length; i++) {
      remaining = target - nums[i];

      if (seen.containsKey(remaining)) {
        return [i, seen[remaining]!];
      }

      seen[nums[i]] = i;
    }
    return [];
  }
}

void main() {
  List<int> nums = [3, 2, 4];
  int target = 6;

  print(Solution().twoSum(nums, target));
}

// import "dart:math";

// void doStuff(
//     {List<int> list = const [1, 2, 3,],
//     Map<String, String> gifts = const {
//       "first": "paper",
//       "second": "cotton",
//       "third": "leather",
//     }}) {
//   print("List: $list");
//   print("gifts: $gifts");
// }

// class Sent {
//   int xu = 9;
//   String yu = "dogs";
//   // constructor
//   Sent(this.xu, this.yu);
//   String gut() => "${xu} ${yu}";
// }

// class UnSent extends Sent {
//   int bu = 10;
//   String ku = "wolves";
//   UnSent(this.bu, this.ku) : super(bu, ku);

//   String pro() => "${bu} and ${ku}";
// }

void main() {
  // List quay = [];
  // Sent sand = Sent(12, "cats");
  // Sent rust = Sent(7, "camels");
  // UnSent hide = UnSent(15, "Llamas");
  // quay.addAll([sand, rust, hide]);
  // for (Sent i in quay) print(i.gut());
  // print(quay[quay.length - 1].pro());

  // var x = "d";
  // try {
  //   if (x != "s" && x != "l") throw "input Error";
  //   switch (x) {
  //     case "l":
  //       print("long");
  //       break;
  //     case "s":
  //       print("short");
  //       break;
  //   }
  // } catch (e, s) {
  //   print("Why ($e)?");
  //   print(s);
  // }
  // assert(x != "l" || x != "s", "Wrong input");

  // print(speedTest(100000));

  // var x = [];
  // for (var i = 0; i < 5; i++) {
  //   x.add(() => print(i));
  // }
  // x.forEach((c) => c());

  // var y = ["a", "b", "c"];
  // for (var i in y) print("It includes " + i);

  // var message = StringBuffer("Lord Olumide");
  // for (var i = 0; i < 5; i++) {
  //   message.write("!");
  // }
  // print(message);

  // int fibonacci(int n) {
  //   if (n == 0 || n == 1) return n;
  //   return fibonacci(n - 1) + fibonacci(n - 2);
  // }

  // for (int i = 10, n = 0; i >= 0; i--,n++) {
  //   print(fibonacci(n));
  // }

  // var ints = const <int?>[9, 0, null];
  // print(ints);
  // if (ints.isNotEmpty)
  //   print("Yes");
  // else
  //   print("NO");

  // final a = [
  //   1,
  //   2,
  //   3,
  //   "Long",
  //   "People",
  //   9,
  //   [2, 3],
  //   (9)
  // ];
  // var b = {};
  // for (int i = 0; i < a.length; i++) {
  //   if (a[i] is int)
  //     b[a[i]] = "Integer";
  //   else if (a[i] is String)
  //     b[a[i]] = "String";
  //   else if (a[i] is List)
  //     b[a[i]] = "List";
  //   else
  //     b[a[i]] = "Unknown";
  // }
  // print(b);
  // print(a.length);
}

// String speedTest(limit) {
//   String output = """""";
//   List<int> x = [];
//   int a = 0;
//   for (int i = 1; i <= limit; i++) {
//     x.add(i);
//     a++;
//     if (a > 19) {
//       output += (x.join(" ") + " \n");
//       a = 0;
//       x = [];
//     }
//   }
//   return output;
// }
// import 'package:dart_application_1/dart_application_1.dart' as praktikum_4;

void main(List<String> arguments) {
  // var list1 = [1, 2, 3];
  // var list2 = [0, ...list1];
  // print(list1);
  // print(list2);
  // print(list2.length);

  // var list1 = [1, 2, null];
  // print(list1);
  // var list3 = [0, ...list1];
  // print(list3.length);

  // var list1 = [1, 2, null];
  // print(list1);
  // var list2 = ['2141720186'];
  // print(list2);
  // var list3 = [0, ...list1, ...list2];
  // assert(list3.length == 5);
  // print(list3.length);

  // bool promoActive = false;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // String login = 'Employer'; // atau nilai lainnya
  // var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  // print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);

}

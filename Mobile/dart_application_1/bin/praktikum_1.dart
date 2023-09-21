// import 'package:dart_application_1/dart_application_1.dart' as praktikum_1;

void main(List<String> arguments) {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);
  final List list = List.filled(5, null);
  assert(list.length == 5);
  assert(list[1] == null);
  print(list.length);

  list[1] = 'Jauhar Maulana Ala';
  list[2] = '2141720186';
  assert(list[1] == 'Jauhar Maulana Ala');
  assert(list[2] == '2141720186');
  print(list[0]);
  print(list[1]);
  print(list[2]);
  print(list[3]);
  print(list[4]);
}

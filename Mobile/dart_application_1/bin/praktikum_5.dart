// // import 'package:dart_application_1/dart_application_1.dart' as praktikum_5;

void main(List<String> arguments) {
  // var record = ('first', a: 2, b: true, 'last');
  // print(tukar((1,2)));

  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa;
  // mahasiswa = ('Jauhar Maulana Ala', 2141720186);
  // print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 'Jauhar Maulana Ala , 2141720186');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'

}
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
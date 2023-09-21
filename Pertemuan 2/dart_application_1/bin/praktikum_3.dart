// import 'package:dart_application_1/dart_application_1.dart' as praktikum_3;

void main(List<String> arguments) {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'third': 'Jauhar Maulana Ala',
    'fourth': '2141720186',
    'fifth': 1
    
  };
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    19: 'Jauhar Maulana Ala',
    20: '2141720186',
  };
  print(gifts);
  print(nobleGases);

  var mhs1 = <String, String>{};
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['third'] = 'Jauhar Maulana Ala';
  mhs1['fourth'] = '2141720186';
  mhs1['fifth'] = 'golden rings';
  
  var mhs2 = <int, String>{};
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';
  mhs2[19] = 'Jauhar Maulana Ala';
  mhs2[20] = '2141720186';

  print(mhs1);
  print(mhs2);
}

void main(List<String> args) {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  mhs1.addAll({
    'nama': 'Ridho Aulia Rahman',
    'nim': '2241720162',
  });

  mhs2.addAll({
    1: 'Ridho Aulia Rahman',
    2: '2241720162',
  });

  gifts['nama'] = 'Ridho Aulia Rahman';
  gifts['nim'] = '2241720162';

  nobleGases[1] = 'Ridho Aulia Rahman';
  nobleGases[2] = '2241720162';

  print(mhs1);
  print(mhs2);
  print(gifts);
  print(nobleGases);
}

void main(List<String> args) {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var record2 = (2, 3);
  print("Sebelum ditukar");
  print(record2);
  print("Setelah ditukar");
  print(tukar(record2));

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Ridho Aulia Rahman', 2241720162);
  print(mahasiswa);

  var mahasiswa2 = ("Ridho Aulia' Rahman", a: 2241720162, b: true, 'last');
  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

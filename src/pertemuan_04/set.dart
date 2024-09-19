void main(List<String> args) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  print(names1);
  print(names2);

  names1.add('Ridho Aulia Rahman');
  names1.addAll(["2241720162"]);
  print(names1);
  names2.add('Ridho Aulia Rahman');
  names2.addAll(["2241720162"]);
  print(names2);
}

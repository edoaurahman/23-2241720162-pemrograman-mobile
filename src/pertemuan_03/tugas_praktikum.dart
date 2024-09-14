void main() {
  for (int index = 0; index <= 201; index++) {
    if (isPrime(index)) {
      print("Ridho Aulia' Rahman - 2241720162");
    }
  }
}

bool isPrime(int index) {
  if (index == 0 || index == 1) return false;
  bool isPrime = true;
  for (int i = 2; i <= index ~/ 2; i++) {
    if (index % i == 0) {
      isPrime = false;
      break;
    }
  }
  return isPrime;
}

Future<double> withdraw(double balance, double amount) async {
  await Future.delayed(Duration(seconds: 1));  // จำลองการติดต่อธนาคาร
  if (amount > balance) {
    throw Exception("ยอดเงินไม่เพียงพอ");
  }
  return balance - amount;
}

void main() async {
  try {
    double result = await withdraw(1000, 1500);
    print("ยอดคงเหลือ: $result");
  } catch (e) {
    print("ถอนเงินไม่สำเร็จ: $e");
  } finally {
    print("จบรายการ");
  }
}
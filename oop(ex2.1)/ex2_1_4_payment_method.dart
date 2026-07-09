abstract class PaymentMethod{

  //abstract method
  void pay(double amount);
}
//ควรใช้ extends เพราะ PaymentMethod เป็น abstract class ที่จะมี logic ร่วมกัน
class CreditCard extends PaymentMethod{
  int? Cardnumber;

  CreditCard({required this.Cardnumber});

  @override
  void pay(double amount){
    print('ชำระผ่าน CreditCard');
    print('หมายเลขบัตร: ${Cardnumber}');
    print('จำนวน: ${amount} บาท');
  }

}

class PromptPay extends PaymentMethod{
  int? numberPhone;

  PromptPay({required this.numberPhone});

  @override
  void pay(double amount){
    print('ชำระผ่าน PromptPay');
    print('หมายเลข: ${numberPhone}');
    print('จำนวนเงิน: ${amount}');
  }
}

class CashOnDelivery extends PaymentMethod{
  String? address;

  CashOnDelivery({required this.address});

  @override
  void pay(double amount){
    print('เก็บเงินปลายทาง');
    print('ที่อยู่จัดส่ง: ${address}');
    print('จำนวนเงิน: ${amount}');
  }
}

void main(){
  List<PaymentMethod> payments = [
    CreditCard(Cardnumber: 31421312),
    PromptPay(numberPhone: 0613502843),
    CashOnDelivery(address: 'Pitsanulok 32/1')
  ];

  for (var payment in payments){
    payment.pay(1500);
    print('--------');
  }
}
//2.5  การแจงนับและสมาชิกของคลาส
enum OrderStatus {pending, paid, cancelled}
void checkStatus(OrderStatus status) {
  switch (status) {
    case OrderStatus.pending:
      print('สถานะ: รอชำระเงิน');
      break;
    case OrderStatus.paid:
      print('สถานะ: ชำระเงินแล้ว');
      break;
    case OrderStatus.cancelled:
      print('สถานะ: ยกเลิกคำสั่งซื้อ');
      break;
  }
}
//2.1 คลาสนามธรรม (Abstraction)
abstract class MenuItem{
  final String name;
  final double basePrice;
  static int itemCount = 0;

  MenuItem(this.name, this.basePrice){
    itemCount++;
  }
  double price();

  void show(){
    print('$name - ${price()} บาท');
  }
}

class Drink extends MenuItem{
  int toppings;

  Drink(String name,double basePrice,this.toppings):super(name,basePrice);
  @override
  double price(){
    return basePrice + (10 * toppings);
  }

}
//2.2 การสืบทอด (Inheritance) 
enum Sizes {S,M,L}
class Food extends MenuItem{
  Sizes size;

  Food(String name,double basePrice,this.size):super(name,basePrice);
  @override
  double price(){
    switch(size){
      case Sizes.S:
        return basePrice * 1.0;
      case Sizes.M:
        return basePrice * 1.2;
      case Sizes.L:
        return basePrice * 1.5;
    }
  }
}
//2.4 การห่อหุ้ม (Encapsulation)
class Wallet{
  double _balance = 0.0;

  double get balance => _balance;

  set balance(double amount){
    if (amount < 0){
      print('ผิดพลาด: ยอดเงินติดลบไม่ได้');
    } else{
      _balance = amount;
    }
  }

  bool pay(double amountPay){
    if (balance >= amountPay){
      balance = balance - amountPay;
      print('ชำระเงินสำเร็จ');
      checkStatus(OrderStatus.paid);
      print('ยอดคงเหลือ: $balance บาท');
      return true;
    }else{
      print('ยอดเงินไม่พอ');
      checkStatus(OrderStatus.pending);
      print('ยอดคงเหลือ: $balance บาท');
      return false;
    }
  }


}

//2.3 พหุสัณฐาน (Polymorphism)

void main(){
  //2.3 result
  List<MenuItem> order = [Drink('ลาเต้', 55, 1),
                          Food('ข้าวผัด', 90, Sizes.S),
                          Drink('อเมริกาโน่', 35, 1)];
  double count = 0;
  for (var i in order){
    i.show();
    count += i.price();
  }
  print('ยอดรวมทั้งสิ้น: $count บาท');
  print('---');
  //2.4 result
  var wallet = Wallet();
  wallet.balance = -100;
  wallet.balance = 300;
  wallet.pay(count);
  wallet.balance = 100;
  wallet.pay(count);
  print('---');
  print('จำนวนรายการเมนูที่ถูกสร้าง: ${MenuItem.itemCount}');

}

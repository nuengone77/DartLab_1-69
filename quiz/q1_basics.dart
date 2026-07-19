//1.1 ตัวแปรและค่าคงที่
const double vatRate = 0.07;
//1.4 function
double calcTotal({required int price, required int qty, double discount = 0}){
    double realPrice = (price * qty - discount) * (1 + vatRate);
    return realPrice;
}
void main(){
    final String shopName = 'Dart Cafe';
    
    //1.2 List และ Map
    List<String> categories = ['เครื่องดื่ม' , 'ของคาว', 'ของหวาน'];
    Map<String,int> menu = {'ลาเต้' : 55,
                            'ข้าวผัด' : 60,
                            'ผัดไทย' : 45,
                            'ราดหน้า' : 40};

    print('ร้าน: $shopName');
    print('อัตราภาษี (vatRate): $vatRate');
    print('---');
    
    print('หมวดเมนู: $categories');
    print('จำนวนเมนูทั้งทั้หมด: ${menu.length} รายการ');
    print('ราคาลาเต้: ${menu['ลาเต้']} บาท');
    print('---');
    //1.3 การควบคุมการทำงาน
    print('เมนูราคาตั้งตั้แต่ 50 บาทขึ้นขึ้ ไป:');
    for (String i in menu.keys){
        int price = menu[i] ?? 0;
        if (price >= 50){
            print('$i : $price');
            
        }
    } 
    print('---');
    double noDiscount = calcTotal(price: 55, qty: 2);
    double haveDiscount = calcTotal(price: 55, qty: 2,discount: 10);
    print('ยอดสุทธิ (ไม่มีส่วนลด): ${noDiscount.toStringAsFixed(1)} บาท');
    print('ยอดสุทธิ (ส่วนลด 10 บาท): ${haveDiscount.toStringAsFixed(1)} บาท');
    print('---');

    //1.5 Null Safety
    String? coupon;
    print('ความยาวคูปอง: ${coupon?.length?? 0}');
    coupon ??= 'NO-COUPON';
    print('คูปองหลังกำหนดค่า : $coupon');




}
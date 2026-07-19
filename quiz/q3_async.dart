Future<Map<String,dynamic>> fetchOrder(int orderId) async{
  
  if (orderId <= 0){
    await Future.delayed(Duration(seconds: 2));
    throw Exception('รหัสคำสั่งซื้อไม่ถูกต้อง');
  }

  await Future.delayed(Duration(seconds: 2));
  return {'id':orderId,'menu':'ลาเต้','total':65.0};
  
}


Stream<String> trackOrder() async*{
  await Future.delayed(Duration(seconds: 1));
  yield 'รับออร์เดอร์แล้ว';
  await Future.delayed(Duration(seconds: 1));
  yield 'กำลังจัดทำ';
  await Future.delayed(Duration(seconds: 1));
  yield 'จัดส่งเรียบร้อย';
}

void main() async{
  print('เริ่มโหลดข้อมูล');
  
  try{
    Map<String,dynamic> orderData = await fetchOrder(7);
    print('ได้ข้อมูลออร์เดอร์: $orderData');
  }catch (e){
    print('เกิดข้อผิดพลาด: $e');
  }finally{
    print('จบรายการ');
  }
  print('---');
  
  try{
    Map<String,dynamic> orderData = await fetchOrder(0);
    print('ได้ข้อมูลออร์เดอร์: $orderData');
  }catch (e){
    print('เกิดข้อผิดพลาด: $e');
  }finally{
    print('จบรายการ');
  }
  print('---');
  await for (String i in trackOrder()){
    print('สถานะ: $i');
  }
  print('ติดตามสถานะเสร็จสิ้น');
}
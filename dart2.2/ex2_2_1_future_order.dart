Future<String> getUserName(){
  return Future.delayed(Duration(seconds: 3), () => '2. โหลดเสร็จ');
}

void main() {
  print('1. เริ่ม');
  getUserName().then((value) => print(value));
  print('3. จบ');   
}
//บรรทัดที่ 1 ปรากฏข้อความ "1. เริ่ม" ขึ้นมาก่อน
//บรรทัดที่ 2 จะรอเวลา 3 วินาทีเพื่อโหลดข้อมูล
//บรรทัดที่ 3 ปรากฏข้อความ "3. จบ" หลังจากโหลดเสร็จ
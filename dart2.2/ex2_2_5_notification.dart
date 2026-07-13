import 'dart:async';

void main() {
  print("--- เริ่มระบบแจ้งเตือน ---");

  StreamController<String> notificationController = StreamController<String>();

  notificationController.stream.listen(
    (String message) {
      
      print("🔔 แจ้งเตือนใหม่: $message");
    },
    onDone: () {
      
      print("📴 ปิดระบบแจ้งเตือน");
    },
  );

  notificationController.add("คุณมี 1 ข้อความที่ยังไม่ได้อ่านจาก Somsak");
  notificationController.add("อย่าลืมดื่มน้ำ! คุณไม่ได้ดื่มน้ำมา 4 ชั่วโมงแล้ว");
  notificationController.add("แบตเตอรี่โทรศัพท์เหลือ 15% กรุณาชาร์จด่วนๆ");

  notificationController.close();
}
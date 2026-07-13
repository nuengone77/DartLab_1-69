Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));

  // ตรวจสอบเงื่อนไขข้อผิดพลาด
  if (userId <= 0) {
    throw Exception("ไม่พบข้อมูลผู้ใช้: ID ต้องมากกว่า 0 (ID ที่คุณส่งมาคือ $userId)");
  }

  // ส่งคืนข้อมูลเมื่อผ่านเงื่อนไข
  return {
    "status": "Success",
    "userId": userId,
    "name": "นันทิศ บุญมี",
    "role": "Security Engineer"
  };
}

void main() async {
  print("--- เริ่มต้นการทำงาน ---");

  // ทดลองปรับเปลี่ยนค่าตรงนี้เพื่อดูผลลัพธ์ทั้ง 2 กรณี
  // กรณีปกติ: ใส่เลขมากกว่า 0 
  // กรณีผิดพลาด: ใส่เลขน้อยกว่าหรือเท่ากับ 0 
  int testUserId = 0; 

  try {
    print("กำลังดาวน์โหลดข้อมูลUser ID: $testUserId (รอ 2 วินาที)...");
    
    Map<String, dynamic> profile = await fetchProfile(testUserId);
    
    print(" ดึงข้อมูลสำเร็จ!");
    print("ยินดีต้อนรับ: ${profile['name']} (ตำแหน่ง: ${profile['role']})");
    
  } catch (error) {
    // บล็อกนี้จะทำงาน "เฉพาะตอนที่เกิด Error ขึ้นใน try" เท่านั้น
    print(" เกิดข้อผิดพลาดในระบบ: $error");
    
  } finally {
    // บล็อกนี้จะทำงาน "เสมอ" ไม่ว่าโปรแกรมจะราบรื่นหรือเกิด Exception
    print("--- จบกระบวนการทำงาน ---");
  }
}
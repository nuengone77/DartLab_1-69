mixin loggable {
  void log(String message) {
    final now = DateTime.now();
    print('[$now] LOG: $message');
  }
}

class Stack<T> with loggable {
  final List<T> _items = [];
 
  void push(T value) {
    _items.add(value);
    log('PUSH: เพิ่ม "$value" เข้า stack (ขนาดปัจจุบัน: ${_items.length})');
  }
 
  
  T? pop() {
    if (isEmpty) {
      log('POP: ล้มเหลว - stack ว่างเปล่า ไม่สามารถ pop ได้');
      return null;
    }
    final value = _items.removeLast();
    log('POP: นำ "$value" ออกจาก stack (ขนาดปัจจุบัน: ${_items.length})');
    return value;
  }
 
  
  T? peek() {
    if (isEmpty) {
      log('PEEK: stack ว่างเปล่า ไม่มีข้อมูลให้ดู');
      return null;
    }
    return _items.last;
  }
 
  bool get isEmpty => _items.isEmpty;
  int get length => _items.length;
 
  @override
  String toString() => _items.toString();
}
 
void main() {
  final stack = Stack<int>();
 
  stack.push(10);
  stack.push(20);
  stack.push(30);
 
  print('เนื้อหาปัจจุบันของ stack: $stack');
 
  stack.pop();
  stack.pop();
 
  print('เนื้อหาปัจจุบันของ stack: $stack');
 
  stack.pop();
  stack.pop(); 
 
  
  final stringStack = Stack<String>();
  stringStack.push('สวัสดี');
  stringStack.push('Dart');
  stringStack.pop();
}
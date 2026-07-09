class Book{
  String? title;
  String? author;
  int? price;

  Book(this.title, this.author, this.price);

  void showDetail(){
    print('Title : $title');
    print('Author : $author');
    print('price : $price');
  }
}

void main(){
  Book book1 = Book('Network', 'Jason crown', 200);
  Book book2 = Book('Mobile application', 'nattapon', 150);

  book1.showDetail();
  book2.showDetail();
}
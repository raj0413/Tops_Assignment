class Book {
  String title;
  String author;
  int publicationYear;


  Book(
    this.title, 
    this.author, 
    this.publicationYear
    );

  void displayDetails() {
    print('Title: $title');
    print('Author: $author');
    print('Publication Year: $publicationYear');
  }

  bool isOverTenYearsOld() {
    final currentYear = DateTime.now().year;
    return (currentYear - publicationYear) > 10;
  }
}

void main() {
  Book book1 = Book('1984', 'George Orwell', 1949);
  
  book1.displayDetails();
  
  if (book1.isOverTenYearsOld()) {
    print('This book is over 10 years old.');
  } else {
    print('This book is not over 10 years old.');
  }
}
class Book:
    def __init__(self, title: str, author: str):
        self.title = title
        self.author = author
        self.is_available = True  
    def __str__(self):
        if self.is_available:
        availability = "Available"
        else:
        availability = "Not Available"
        return "'" + self.title + "' by " + self.author + " (" + availability + ")"

class Library:
    def __init__(self):
        self.books = []
    def add_book(self, title: str, author: str):
        new_book = Book(title, author)
        self.books.append(new_book)
    def list_books(self):
        book_list = []
        for book in self.books:
            book_list.append(str(book))  
        return book_list
    def load_books(self, file_path: str):
    
class Student:
    def __init__(self, name: str):
        self.name = name
        self.borrowed_books = []
    def borrow_book(self, book_title: str, library: Library):
         if len(self.borrow_book) >= 3:
            print(f"{self.name} can't emprate more than 3 books.")
            return
        for book in library.books:
            if book.title == title:
                if title.disponible:
                    book.disponible = False
                    self.borrowed_book.append(book)
                    print(f"{self.name} emprunte the book '{title}'.")
                    return
                else:
                    print(f"the book '{title}'is borrowed.")
                    return
        print(f"the book '{title}' isn't at library.")
    def rendre_livre(self, title, library):
        for book in self.borrowed_book:
            if book.title == title:
                book.disponible = True
                self.borrowed_book.remove(book)
                print(f"{self.name}  '{title}'.")
                return


        

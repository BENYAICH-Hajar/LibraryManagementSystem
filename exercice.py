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
        


# Create authors
author1 = Author.create(name: "J.K. Rowling", email_address: "jkrowling@example.com", contact_number: "1234567890")
author2 = Author.create(name: "George R.R. Martin", email_address: "grrmartin@example.com", contact_number: "0987654321")

# Create books
book1 = Book.create(name: "Harry Potter and the Philosopher's Stone", publication_date: DateTime.new(1997,6,26), edition: 1)
book2 = Book.create(name: "A Game of Thrones", publication_date: DateTime.new(1996,8,6), edition: 1)

# Create libraries
library1 = Library.create(name: "Central Library", location: "Downtown")
library2 = Library.create(name: "Community Library", location: "Uptown")

# Create authorships
Authorship.create(author: author1, book: book1)
Authorship.create(author: author2, book: book2)

# Create book libraries
BookLibrary.create(book: book1, library: library1)
BookLibrary.create(book: book1, library: library2)
BookLibrary.create(book: book2, library: library1)
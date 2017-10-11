require_relative 'book.rb'

class User
  attr_accessor :name, :address, :id, :age, :books_rented

  def initialize(name, address, id, age)
    @name = name
    @address = address
    @id = id
    @age = age
    @books_rented = []
  end

  def print_info()
    p ""
    p "User Name: " + @name
    p "Address: " + @address
    p "ID: " + @id.to_s
    p "Age: " + @age.to_s
    p "Books rented:"
    @books_rented.each do |book|
      book.print_info()
    end
  end

  # add book to books rented array, if not already rented
  def rent_book(book)
    if book.is_free?
      book.check_out
      books_rented.push(book)
    end

  end

  # returns book, removes from books rented array and calls Book.check_in to mark it as available again.
  def return_book(book_to_return)
    book_to_return.check_in
    # array_count = 0
    @books_rented.each do |book|
      if book = book_to_return
        # @books_rented.delete_at(array_count)
        @books_rented = @books_rented - [book_to_return]
      else
        # array_count += 1
      end
    end
  end

end
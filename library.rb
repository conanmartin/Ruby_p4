require_relative 'user.rb'
require_relative 'book.rb'

class Library

  attr_accessor :name, :address, :books, :users

  def initialize (name, address)
    @name = name
    @address = address
    @books = []
    @users = []
  end

  def print_info()
    p ""
    p "LIBRARY INFORMATION"
    p "Library name: " + @name
    p "Library address: " + address
    p ""
    p "BOOKS"
    @books.each do |book|
      book.print_info()
    end
    p ""
    p "USERS"
    @users.each do |user|
      user.print_info()
    end
  end

  # store books in array
  def add_books(books)
    books.each do |book|
      @books.push(book)
    end
  end

  # store users in an array
  def add_users(users)
    users.each do |user|
      @users.push(user)
    end
  end

end
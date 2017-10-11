class Book

  attr_accessor :title, :author, :id, :genre, :available

  def initialize (title, author, id, genre)
    @title = title
    @author = author
    @id = id
    @genre = genre
    @available = true
  end

  def print_info
    p ""
    p "Title: " + @title
    p "Author: " + @author
    p "ID: " + @id.to_s
    p "Genre: " + @genre
    if @available
      p "Available"
    else
      p "Not available"
    end
  end

  # book no longer available
  def check_out
    @available = false
  end

  # book returned, now available
  def check_in
    @available = true
  end

  # check if book is available
  def is_free?
     @available
  end

end


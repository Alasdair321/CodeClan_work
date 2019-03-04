class Library
  attr_reader :books

  def initialize(books_array)
    @books = books_array
  end

  def get_book_by_title(title)
    return @books.find{|book_hash| book_hash[:title] == title}
  end

  def get_rental_details_by_title(title)
    return get_book_by_title(title)[:rental_details]
  end

  def add_book_by_title(title)
    @books.push(:title => title, :rental_details => {:student_name => "", :date => ""})
  end

  def change_rental_details(title, student, date)
    get_rental_details_by_title(title).replace({:student_name => student, :date => date})
  end

end

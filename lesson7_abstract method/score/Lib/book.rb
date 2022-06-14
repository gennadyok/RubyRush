class Book < Product

  attr_accessor :title, :genre, :author

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: "UTF-8").map {|l| l.chomp}

    self.new(
      title: lines[0],
      director: lines[1],
      year: lines[2],
      price: lines[3].to_i,
      amount: lines[4].to_i
    )
  end

  def initialize(params)
    super

    @title = params[:title]
    @genre  = params[:genre]
    @author = params[:author]
  end

  def to_s
    return "Книга #{@title}, #{@genre}, автор - #{@author}, #{super}"
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @genre = params[:genre] if params[:genre]
    @author = params[:author] if params[:author]
  end

  def from_file

    read_file = File.new("./data/films/01.txt", "r:UTF-8")
    lines = read_file.readlines
    puts lines
    read_file.close

  end

end
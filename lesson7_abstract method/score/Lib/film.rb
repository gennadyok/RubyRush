class Film < Product

  attr_accessor :title, :year, :producer

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: "UTF-8").map {|l| l.chomp}

    self.new(
      title: lines[0],
      director: lines[1],
      year: lines[2].to_i,
      price: lines[3].to_i,
      amount: lines[4].to_i
    )
  end

  def initialize(params)
    super

    @title = params[:title]
    @year  = params[:year]
    @producer = params[:producer]
  end

  def to_s
    return "Фильм #{@title}, #{@year}, автор - #{@producer}, #{super}"
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @year = params[:year] if params[:year]
    @producer = params[:producer] if params[:producer]
  end

end
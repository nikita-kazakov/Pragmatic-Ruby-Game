require_relative 'movie'

class Movie3D < Movie

  def initialize(title, rank, wow_factor)
    super title, rank
    @wow_factor = wow_factor
  end

  def show_effect
    puts "Wow! " * @wow_factor
  end

  def thumbs_up
    @wow_factor.times{super}
  end

end

movie3d = Movie3D.new("End of World 3D", 5,55)
puts movie3d

p movie3d.class.ancestors
movie3d.show_effect

p movie3d.rank
p movie3d.thumbs_up
movie3d.show_effect
p movie3d.rank

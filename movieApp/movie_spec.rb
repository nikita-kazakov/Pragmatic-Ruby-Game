require_relative 'movie'
#To Run, type in terminal: rspec movie_rspec.rb --color
#To Run with Documentation: Rspec movie_rspec.rb --color --format documentation
#Testing Movie class
describe Movie do

end

#Inside of it, you will type in: it-do for each test


describe Movie do

  #This before do is like initialize in a class!  You create instance variables
  #and you use them in the it do blocks(like methods of a class)
  before do
    movie = Movie.new("goonies", 10)
    @movie = movie
    @initial_rank = movie.rank
  end

  it 'has a capitalized title' do
    @movie.title.should == "Goonies"
  end

  it 'has an Initial Rank' do
    @movie.rank.should == 10
  end

  it 'has a string representation' do
    @movie.to_s.should == "Goonies has a rank of 10"
  end

  it 'increases rank by 1 when thumbs up' do
    @movie.thumbs_up.should == @initial_rank + 1
  end

  it 'decreases rank by 1 when given a thumbs down' do
    @movie.thumbs_down.should == @initial_rank - 1
  end

  context "created with a default rank" do

    before do
      @movie = Movie.new('goonies')
    end

    it 'has a rank of 0' do
      @movie.rank.should == 0
    end
  end

end
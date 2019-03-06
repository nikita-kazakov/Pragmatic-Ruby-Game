class Movie

  attr_reader :title, :rank
  attr_writer :title

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
  end



  def listing
    "#{@title} has a rank of #{@rank}"
  end

  def thumbs_up
    @rank = @rank + 1
  end

  def thumbs_down
    @rank = @rank - 1
  end

  def to_s
    "#{title} has a rank of #{rank}"
  end


end

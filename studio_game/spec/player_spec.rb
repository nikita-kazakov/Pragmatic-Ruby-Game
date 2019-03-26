require_relative '../lib/player'

module StudioGame
  describe Player do

    before do
      @player = Player.new("diehard", 10)
      @health = @player.health
    end

    it 'has a capitalized name' do
      @player.name.should == "Diehard"

    end

    it "has an initial health of" do
      @player.health.should == 10
    end

    it "computes a score as the sum of it's health and length of name" do
      @player.score == 107
    end

    it "increases health by 15 when wooted" do
      @player.w00t
      @player.health.should == 25
    end


    it "decreases health by 10 when blammed" do
      @player.blam
      @player.health.should == 0

    end

  end
end

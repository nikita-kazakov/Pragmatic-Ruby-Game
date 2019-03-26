require 'flicks/snackbar'

module Flicks
  describe Snack do
    before do
      @snack = Snack.new(:pretzel, 10)
    end
  
    it "has a name attribute" do
      @snack.name.should == :pretzel
    end
  
    it "has a carbs attribute" do
      @snack.carbs.should == 10
    end
  
  end
end

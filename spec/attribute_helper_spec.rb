require_relative "../lib/require_helper"
describe ".attribute_helper" do
  include AttributeHelper
  describe "#normalize_gender" do
    it { normalize_gender("F").should eq "female" }
    it { normalize_gender("M").should eq "male" }
    
    it "should raise error" do
      expect { normalize_gender("test")}.to raise_error(ArgumentError)
    end
  end

  describe "#normalize date" do
    it { normalize_date("1-1-1987").should eq "1/1/1987" }
  end
end
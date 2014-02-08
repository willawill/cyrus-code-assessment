require "comma_parser.rb"
describe CommaParser do
  subject {CommaParser.new("spec/fixtures/comma.txt")}
  describe "#initialize" do
    it "should assign raw_data" do
      subject.raw_data.should_not be_nil
    end
  end
  describe "#parse_record_data" do
   it "should parse data into record" do
     subject.parse_record_data.should == [
         {last_name: "foo", first_name: "bar", gender:"Male", favorite_color: "Tan", date_of_birth:"2/13/1943" },    {last_name: "baz", first_name: "qux", gender:"Male", favorite_color: "Yellow", date_of_birth:"4/23/1967" }]
    end
  end
end

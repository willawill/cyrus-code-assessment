describe CommaParser do
  subject {CommaParser.new("spec/fixtures/comma.txt")}
  describe "#initialize" do
    it "should assign raw_data" do
      subject.raw_data.should_not be_nil
    end
  end
  describe "#parse_record_data" do
     specify { subject.parse_record_data.should eq [
         {
          last_name: "foo",
          first_name: "bar",
          gender: "male",
          favorite_color: "tan",
          date_of_birth: "2/13/1943"
          },
          {
            last_name: "baz",
            first_name: "qux",
            gender: "male",
            favorite_color: "yellow",
            date_of_birth: "4/23/1967"}] }
  end
end

describe "PipeParser" do
  let(:file_name) {"spec/fixtures/pipe.txt"}
  subject { PipeParser.new(file_name)}
  describe "#initialize" do
    it "should assign content to raw_data" do
      subject.raw_data.should_not be_nil
    end
  end

  describe "#parse_record_data" do
    let(:expected_data) {[{last_name: "smith", first_name:"steve", middle_name: "D", gender: "male", favorite_color: "red", date_of_birth: "3/3/1985"}]}
    it "should parse raw data" do
      expect(subject.parse_record_data).to eq expected_data
    end
  end
end
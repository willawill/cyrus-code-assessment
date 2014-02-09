describe "PipeParser" do
  let(:file_name) {"spec/fixtures/pipe.txt"}
  subject { PipeParser.new(file_name)}
  describe "#initialize" do
    its(:raw_data) { should_not be_nil }
  end

  describe "#parse_record_data" do
    let(:expected_data) {[{last_name: "smith", first_name:"steve", middle_name: "D", gender: "male", favorite_color: "red", date_of_birth: "3/3/1985"}]}
    specify { subject.parse_record_data.should eq expected_data }
  end
end
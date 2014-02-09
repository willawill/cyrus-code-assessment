require_relative "../lib/require_helper"
describe SpaceParser do
  subject { SpaceParser.new("spec/fixtures/space.txt")}

  describe "#initialize" do
    its(:raw_data) { should_not be_nil }
  end

  describe "#parse_record_data" do
    let(:expected_data) {
      {last_name: "foo", first_name: "bar", middle_name: "f", gender: "female", date_of_birth: "6/3/1975", favorite_color: "red"}
    }
    specify { subject.parse_record_data.first.should == expected_data }
  end
end
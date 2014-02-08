require "record.rb"
describe Record do
  let(:parameters) {{last_name: "foo", first_name: "bar", gender: "Male", favorite_color: "Tan", date_of_birth:"2/13/2943"}}
  subject {Record.new(parameters)}
  describe "#initialize" do
   it "should assign attributes" do
     subject.last_name.should eq "foo"
   end
  end
end

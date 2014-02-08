require "record.rb"

describe Record do
  let(:parameters) {{last_name: "foo", first_name: "bar", gender: "Male", favorite_color: "Tan", date_of_birth:"2/13/2943"}}
  subject {Record.new(parameters)}

  describe "#initialize" do
    it "should assign attributes" do
      expect(subject.last_name).to eq "foo"
    end
  end
end

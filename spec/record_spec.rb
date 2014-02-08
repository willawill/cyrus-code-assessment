require "record.rb"

describe Record do
  let(:parameters) {{last_name: "foo", first_name: "bar", gender: "Male", favorite_color: "Tan", date_of_birth:"2/13/2943"}}
  subject {Record.new(parameters)}

  describe "#initialize" do
    it "should assign attributes" do
      expect(subject.last_name).to eq "foo"
    end
  end

  describe "#==" do
    it "should compare two records based on it's attributes values" do
      record1 = Record.new(parameters)
      record2 = Record.new(parameters)

      expect(record1).to eq record2
    end
  end
end

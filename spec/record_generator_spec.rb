require "record_generator.rb"

describe ".record_generator" do
  let(:input1) { {last_name: "foo", first_name: "bar", gender: "male", favorite_color: "tan", date_of_birthday:"2/3/1943"} }
  let(:input2) { {last_name: "moo", first_name: "bar", gender: "male", favorite_color: "yellow", date_of_birthday:"2/3/1944"} }

  subject { RecordGenerator.generate_record_set([input1, input2])}

  it "should return an array of Record objects" do
    expect(subject).to eq [Record.new(input1), Record.new(input2)]
  end
end
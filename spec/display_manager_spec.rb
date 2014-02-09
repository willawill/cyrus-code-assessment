require_relative "../lib/require_helper"

describe ".displayManager" do
  let(:male_record)   { Record.new({last_name: "foo", first_name: "bar", gender: "male", date_of_birth: "12/3/1965", favorite_color: "red"})}
  let(:female_record) { Record.new({last_name: "baz", first_name: "quz", gender: "female", date_of_birth: "4/2/1922", favorite_color: "yellow"})}

  let(:record_set) {[male_record, female_record]}

  subject {DisplayManager.new(record_set)}

  describe "#sorted_by_gender_then_last_name" do
      specify { subject.sorted_by_gender_then_last_name.first.should be female_record }

    context "same genders" do
      let(:anoter_female) { Record.new({last_name: "zoo", first_name: "goo", gender: "female", date_of_birth: "4/2/1956", favorite_color: "yellow"}) }
      it "should have baz before zoo" do
        record_set << anoter_female
        expect(subject.sorted_by_gender_then_last_name.first).to be female_record
      end
    end
  end

  describe "#sort_by_birth_date" do
    specify { subject.sorted_by_birth_date.first.should be female_record }
  end

  describe "#sorted_by_last_name" do
    specify { subject.sorted_by_last_name.first.should be male_record }
  end
end


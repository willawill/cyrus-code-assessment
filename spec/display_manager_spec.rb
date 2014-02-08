require "display_manager.rb"
require "record.rb"

describe ".displayManager" do
  let(:male_record) { Record.new({last_name: "foo", first_name: "bar", gender: "male"})}
  let(:female_record) {Record.new({last_name: "baz", first_name: "quz", gender: "female"})}
  let(:record_set) {[male_record, female_record]}

  subject {DisplayManager.new(record_set)}
  describe "#sorted_by_gender_then_last_name" do
    it "should have female before male" do
      expect(subject.sorted_by_gender_then_last_name.first).to be female_record
    end

    context "when two records have the same genders" do
      let(:anoter_female) { Record.new({last_name: "zoo", first_name: "goo", gender: "female"}) }
      it "should have baz before zoo" do
        record_set << anoter_female
        expect(subject.sorted_by_gender_then_last_name.first).to be female_record
      end
    end
  end
end


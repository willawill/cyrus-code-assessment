describe Record do
  let(:parameters) {{last_name: "foo", first_name: "bar", gender: "male", favorite_color: "tan", date_of_birth:"2/13/1943"}}
  subject {Record.new(parameters)}

  describe "#initialize" do
    its(:last_name) { should eq "foo"}
    its(:first_name) { should eq "bar"}
    its(:gender) { should eq "male"}
    its(:favorite_color) { should eq "tan"}
    its(:date_of_birth) { should eq "2/13/1943"}
  end
end

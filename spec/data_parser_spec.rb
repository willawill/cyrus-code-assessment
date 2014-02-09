require_relative "../lib/require_helper"

describe DataParser do
  let(:file_name) { "spec/fixtures/comma.txt"}
  let(:type) {"comma"}
  subject { DataParser.create(type, file_name)}

  specify {subject.class.should be CommaParser }
end


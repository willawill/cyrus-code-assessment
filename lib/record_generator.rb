class RecordGenerator

  def self.generate_record_set(raw_input)
    raw_input.collect {|item| Record.new(item) }
  end
end
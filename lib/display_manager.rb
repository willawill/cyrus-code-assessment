class DisplayManager
  attr_reader :record_set

  def initialize _record_set
    @record_set = _record_set
  end

  def sorted_by_gender_then_last_name
    @record_set.sort do |record1, record2|
      [record1.gender, record1.last_name] <=> [record2.gender, record2.last_name]
    end
  end
end
class Record

  ATTRIBUTES = :last_name, :first_name, :gender, :favorite_color, :date_of_birth
  ATTRIBUTES.each { |atr| attr_accessor atr }
  
  def initialize args
    args.each do |k, v|
      instance_variable_set("@#{k}", v) if ATTRIBUTES.include?(k)
    end
  end

  protected
  def == anotherRecord
    true if all_the_attributes_are_identical anotherRecord
  end

  def all_the_attributes_are_identical anotherRecord
    ATTRIBUTES.each do |atr|
      false if self.send(atr) !=  anotherRecord.send(atr)
    end
  end

  def to_s
    "#{self.last_name.capitalize} #{self.first_name.capitalize} #{self.gender.capitalize} #{self.date_of_birth} #{self.favorite_color.capitalize}"
  end
end

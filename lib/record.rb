class Record

  ATTRIBUTES = :last_name, :first_name, :gender, :favorite_color, :date_of_birth
  ATTRIBUTES.each { |atr| attr_accessor atr }
  
  def initialize args
    args.each do |k, v|
      instance_variable_set("@#{k}", v)
    end
  end

  def == anotherRecord
    ATTRIBUTES.each do |atr|
      false if self.send(atr) !=  anotherRecord.send(atr)
    end
    true
  end

  private
  def to_s
    "#{self.last_name} #{self.first_name} #{self.gender} #{self.date_of_birth} #{self.favorite_color}"
  end
end

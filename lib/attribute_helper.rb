module AttributeHelper

  def normalize_gender gender
    case gender.downcase
    when "f" then"female"
    when "m" then "male"
    else
      raise ArgumentError, "Gender can only be male or female"
    end
  end

  def normalize_date date
    date.gsub("-", "/")
  end
end
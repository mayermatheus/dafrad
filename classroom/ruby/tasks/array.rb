class Array

  def count_elements
    result = {}
    self.each {|element|
      result[element.to_s] ||= 0
      result[element.to_s] += 1
    }
    result
  end

  def repeated_from(times=2)
  end

  def apply_operation(operation)
  end

end

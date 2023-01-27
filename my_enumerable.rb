module MyEnumerable
  def all?
    each { |e| return false unless yield e }
    true
  end

  def any?
    each { |e| return true if yield e }
    false
  end

  def filter
    filtered_list = []
    each { |e| filtered_list.push(e) if yield e }
    filtered_list
  end
end

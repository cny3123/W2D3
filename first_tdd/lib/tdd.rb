class Array
  
  def my_uniq
    results = [] 
    self.each {|ele| results << ele unless results.include?(ele)}
    results
  end 
  
  def two_sum
    result = []
    
    self.each_with_index do |el1, i|
      self.each_with_index do |el2, j|
        next if i >= j
        
        if el1 + el2 == 0
          result << [i, j]
        end
      end
    end
    
    result.sort
  end
  
  def my_transpose
    result = Array.new(3) { [] }
    
    self.each_with_index do |row, i|
      row.each_index do |j|
        result[i] << self[j][i]
      end
    end
    
    result
  end
  
  def stock_picker
    difference = 0
    result = []
    
    self.each_with_index do |el1, i|
      self.each_with_index do |el2, j|
        next if i >= j
        
        if (el2 - el1) > difference
          difference = el2 - el1
          result = [i, j]
        end
      end
    end 
    
    result
  end
end


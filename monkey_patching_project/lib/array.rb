require "byebug"

class Array
  def span
    if self.empty?
        return nil
    end
    self.max-self.min
  end

  def average
    if self.empty?
        return nil
    end
    self.sum*1.0/self.length*1.0
  end

  def median
    length=self.length
    if self.empty?
        return nil
    end
    if self.length%2==0    
        self.sort![(length/2)-1..(length/2)].average
    else
        self.sort![length/2]
    end
  end

  def counts
    hashie={}
    self.each do |key|
      if hashie.has_key?(key)
        hashie[key]+=1
      else
        hashie[key]=1
      end
    end

    hashie
  end

  def my_count(str1)
    if (self.counts[str1]==nil)
      return 0
    end
    self.counts[str1]
  end

  def my_index(str1)

    self.each_with_index do |i, index|
      if i ==str1
        return index
      end
    end
    return nil
  end

  def my_uniq
    newArray=Array.new
    self.each do |item|
      if (!newArray.include?(item))
        newArray<<item
      end
    end
    newArray
  end



  def my_transpose
    finaloutput=Array.new
    newArray=Array.new
    for index in (0...self[0].length) do
      newArray=Array.new
      for index2 in (0...self.length) do
        newArray<<self[index2][index]
      end
      finaloutput<<newArray
    end
    finaloutput
  end
end

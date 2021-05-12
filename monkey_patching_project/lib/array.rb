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

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

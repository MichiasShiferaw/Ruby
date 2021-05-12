require "byebug"

class Array
  def span
    if self.empty?
        return nil
    end

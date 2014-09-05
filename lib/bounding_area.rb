class BoundingArea
  attr_reader :boxes

  def initialize(array)
    @boxes = array
  end

  def contains_point?(x,y)
    if @boxes == []
      false
    else
      @boxes.each do |box|
        if box.contains_point?(x,y) == true
          return true
        else
          return false
        end
      end
    end
  end
end

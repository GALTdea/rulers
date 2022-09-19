class Array
  def deeply_empty?
    empty? || all?(&:empty?)
  end
end


# p [].deeply_empty? # true
# p ['','','', ['',['']]].deeply_empty? # false
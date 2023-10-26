# Method to pick the two days where there is a greatest difference between them
# constraint being the higher number must come after the lower number\

def stock_picker(array)
  best_days =[0,0]
  max_dif = 0
  array.each_with_index do |value,indx|
    dif = (array[indx..].max - value)
    if dif > max_dif
      max_dif = dif
      best_days[0]=indx
      best_days[1] = array.index(array[indx..].max)
    end
  end
  return best_days
end


p stock_picker([7,12,7,7,17,9,14,12,])

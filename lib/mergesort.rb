def merge_sort(arr,result = [])  
  if  arr.size <= 1
    return arr 
  end
  mid = arr.size / 2  
  left_arr = arr.take(mid)
  right_arr = arr.drop(mid)  

  sorted_left_arr = merge_sort(left_arr) 
  sorted_right_arr = merge_sort(right_arr)   
  
  while [sorted_left_arr,sorted_right_arr].none?(&:empty?)
    if sorted_left_arr[0] < sorted_right_arr[0] 
      result << sorted_left_arr.shift 
    elsif sorted_right_arr[0] < sorted_left_arr[0] 
      result << sorted_right_arr.shift 
    end 
  end
  sorted = result + sorted_left_arr + sorted_right_arr
  p sorted
end


a = [2,4,7,5,3,8,6,1] 

merge_sort(a)
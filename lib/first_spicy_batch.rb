# The is_spicy_batch method is already defined for you and will be called when running tests.
# @param {Integer} batch
# @return {boolean} whether the batch is spicy
 

def first_spicy_batch(n)

  left = 0 
  right = n 

  while left < right 

    mid = left + (right - left) / 2

    if is_spicy_batch(mid)
      right = mid 
    else 
      left = mid + 1
    end 
  end 
 left 
end


# we have an array of batches, they are sorted in order. So at some point in the array we will hit a batch that will be spicey and the batches thereafter will also be spicy. 

# We can set left to 0, and then set right to n which is the nth number in the batches array.

# We can then say if left is less than the nth number, then we want to halve the array. We can continue to halve the array until we are able to narrow down to the first batch
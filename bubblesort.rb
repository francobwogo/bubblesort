def bubble_sort(arr)
  # Get the length of the array
  n = arr.length
  
  # Outer loop: we make multiple passes over the array
  for i in 0...(n - 1)  # The loop will run n-1 times
    swapped = false  # This flag checks if we swapped any elements in this pass
    
    # Inner loop: we compare adjacent elements
    for j in 0...(n - i - 1)  # The inner loop compares elements up to the unsorted part
      if arr[j] > arr[j + 1]  # If the current element is greater than the next one
        # Swap the elements if they are in the wrong order
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        swapped = true  # Mark that a swap happened
      end
    end
    
    # If no swaps happened, the array is already sorted, and we can stop early
    break unless swapped
  end
  
  return arr  # Return the sorted array
end

# Example usage:
arr = [5, 3, 8, 4, 2]  # Unsorted array
sorted_arr = bubble_sort(arr)  # Call the bubble_sort function
puts sorted_arr.inspect  # Output the sorted array

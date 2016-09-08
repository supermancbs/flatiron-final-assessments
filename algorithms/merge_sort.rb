
# array = [4, 8, 1, 7, 10, 3]
# The time complexity is big Nlog(N) the break down of the array into smaller array is not constant
# hence log(N). The number of operations per level is N. So N*log(N)

def merge_sort(array)
  if array.length <= 1
    return array
  end
  merge(merge_sort(array[0...array.length/2]), merge_sort(array[array.length/2...array.length]))
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    if left.first < right.first
      result << left.shift
    else
      result << right.shift
    end
  end
  result.concat(left).concat(right)
end

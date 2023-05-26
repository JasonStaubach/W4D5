def uniq(arr)
    raise "Wrong argument type" unless arr.is_a?(Array)
    arr.uniq
end

def two_sum(arr, val)
    raise "wrong input types" unless arr.is_a?(Array) && val.is_a?(Integer)

    sums = []

    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            sums << [i,j] if (arr[i] + arr[j]) == val
        end
    end

    sums
end
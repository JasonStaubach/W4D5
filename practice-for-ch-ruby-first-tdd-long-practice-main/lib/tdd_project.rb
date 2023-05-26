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

def my_transpose(arr)
    raise "wrong input type" unless arr.is_a?(Array) && arr[0].is_a?(Array)
    arr.each {|sub| raise "is not square" unless sub.length == arr.length}
    trans = Array.new(arr.length){Array.new(arr.length)}
   
    (0...arr.length).each do |i|
        (0...arr.length).each do |j|
            trans[j][i] = arr[i][j]
        end
    end
    trans
end

def stock_prices(arr)
    # debugger
    raise "wrong input" unless arr.is_a?(Array) && (arr.length > 1) && arr.all?{|num| num.is_a?(Integer)}
    max = 0
    bigi = nil
    bigj = nil
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            if max < arr[j]-arr[i]
                max = arr[j]-arr[i] 
                bigi = i
                bigj = j
            end
        end
    end
    [bigi,bigj]
end
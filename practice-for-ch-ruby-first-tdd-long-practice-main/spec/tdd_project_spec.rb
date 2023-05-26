require 'tdd_project'
require 'rspec'
require "byebug"

describe '#uniq' do
    array = [1,2,3,3,4,5]
    it "returns an array" do
        expect(uniq(array)).to be_instance_of(Array)
    end
    it "return array has no duplicates" do
        uniq_arr = [1,2,3,4,5]
        expect(uniq([])).to eq([])
        expect(uniq(array)).to eq(uniq_arr)
        expect(uniq([1,1,1,1,1])).to eq([1])
        expect(uniq(["yes","no","maybe"])).to eq(["yes","no","maybe"])
    end

    it "throws error if not passing in array" do
        expect{ uniq(:wet) }.to raise_error "Wrong argument type"
    end
end

describe '#two_sum' do
    array = [1,2,3,4,5]
    it "returns an array" do
        expect(two_sum(array, 6)).to be_instance_of(Array)
    end

    it "returns sub-array in left to right order" do
        expect(two_sum(array, 6)).to eq([[0,4],[1,3]])
        expect(two_sum(array, 3)).to eq([[0,1]])
        expect(two_sum([0,1,3,2,4,-1,3], 3)).to eq ([[0,2],[0,6],[1,3],[4,5]])
    end

    it "returns all sub-array of length two" do
        expect(two_sum(array, 6)[0].length).to eq(2)
        expect(two_sum(array, 6)[1].length).to eq(2)
        expect(two_sum(array, 7)[-1].length).to eq(2)
    end

    it "raises error if given wrong arguments" do
        expect{ two_sum(5,6) }.to raise_error "wrong input types"
        expect{ two_sum(array, :white) }.to raise_error "wrong input types"
    end
end

describe "#my_transpose" do
    matrix = [[1,2,3],
              [4,5,6],
              [7,8,9]]
    it "throws error if not array" do
        expect{ my_transpose("str") }.to raise_error "wrong input type"
    end

    it 'throws error if array is not square' do
        expect{ my_transpose([[2,3,4],[2,3]]) }.to raise_error "is not square"
        expect{ my_transpose(matrix) }.not_to raise_error
    end

    it "returns the array transposed" do
        expect(my_transpose(matrix)).to eq([[1,4,7],[2,5,8],[3,6,9]])
    end

    it 'works with any data type' do
        expect(my_transpose([["a","b"],["c","d"]])).to eq([["a","c"],["b","d"]])
        expect(my_transpose([[1,2],[3,4]])).to eq([[1,3],[2,4]])
        expect(my_transpose([[[1,2],[3,4]],[[5,6],[7,8]]])).to eq([[[1,2],[5,6]],[[3,4],[7,8]]])
    end
end

describe "#stock_prices" do
    stocks1 = [0,3,5,7,-2,4,6,2]
    stocks2 = [9,3,5,3,1,4]
    it 'returns an array of length 2' do
        expect(stock_prices(stocks1).length).to eq(2)
        expect(stock_prices(stocks2).length).to eq(2)
    end
    it 'always returns a buy sell combo where it buys before it sells' do
        expect(stock_prices(stocks1)).to eq([4,6])
        expect(stock_prices(stocks2)).to eq([4,5])
    end

    it 'returns an error if it isnt given an array of numbers' do
        expect{ stock_prices("hello") }.to raise_error "wrong input"
        expect{ stock_prices(["hi",'fight','dead']) }.to raise_error "wrong input"
        expect{ stock_prices([5]) }.to raise_error "wrong input"
    end
    it "returns the right answer" do
        expect(stock_prices(stocks1)).to eq([4,6])
        expect(stock_prices(stocks2)).to eq([4,5])
    end
end
    
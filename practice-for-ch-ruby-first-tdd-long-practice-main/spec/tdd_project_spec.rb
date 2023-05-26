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
    it "takes in a 2d array"
    it "throws error if not array"
    it 'throws error if array is not square'
    it "returns the array transposed"
    it 'works with any data type'
end
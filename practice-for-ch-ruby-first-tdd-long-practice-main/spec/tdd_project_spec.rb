require 'tdd_project'
require 'rspec'

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
        expect{ uniq(:wet) }.to raise_error
    end
end

describe '#two_sum' do
    array[1,2,3,4,5]
    it "returns an array" do
        expect(two_sum(array, 6)).to be_instance_of(Array)
    it "returns sub-array in left to right order" do
        expect(two_sum(array, 6)).to eq([[1,5],[2,4]])
        expect(two_sum(array, 3)).to eq([[1,2]])
    end

    it "returns all sub-array of length two" do
        expect(two_sum(array, 6)[0].length).to eq(2)
        expect(two_sum(array, 6)[1].length).to eq(2)
        expect(two_sum(array, 7)[-1].length).to eq(2)
    end

    it "raises error if given wrong arguments" do
        expect{ two_sum(5,6) }.to raise_error
        expect{ two_sum(array, :white) }.to raise_error
    end
end
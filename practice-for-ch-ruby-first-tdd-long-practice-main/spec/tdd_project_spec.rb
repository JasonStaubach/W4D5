require 'tdd_project'
require 'rspec'

describe '#uniq' do
    array = [1,2,3,3,4,5]
    it "returns an array"
        expect(uniq(array)).to be_instance_of(Array)
    it "return array has no duplicates"
end
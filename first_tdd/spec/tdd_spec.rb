require 'tdd'

describe "#my_uniq" do 
  subject(:arr) { [4, 3, 1, 3, 5, 2, 2, 3]}
  it "remove duplicate items from array." do 
    expect(arr.my_uniq).to eq([4, 3, 1, 5, 2])
  end
end
  
describe "#two_sum" do
  subject(:arr) { [-3, 1, 3, -1, 4]}
  
  it "return an array of sub array pairs." do
    expect(arr.two_sum).to eq([[0, 2], [1,3]])
  end
  
  it 'returns a sorted array of index pairs' do
    expect(arr.two_sum).to eq(arr.two_sum.sort)
  end
end

describe "#my_transpose" do
  subject(:arr) {[[0, 1, 2], [3, 4, 5], [6, 7, 8]]}

  it "it returns a nested array of the rows and columns transposed." do
    expect(arr.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end 
end

describe '#stock_picker' do
  subject(:arr) {[5, 10, 2, 3, 9]}
  
  it 'returns an array of the indices with the max difference' do
    expect(arr.stock_picker).to eq([2, 4])
  end
end


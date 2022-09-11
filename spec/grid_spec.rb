require 'grid'

describe 'Grid' do 
    it 'creates a 5 x 5 grid' do
        Grid.new
        expect(grid).to be_truthy
    end
end
    
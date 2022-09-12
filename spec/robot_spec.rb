require 'robot'

describe 'Robot' do 
    it 'has an origin of 0.0' do
        instance = Robot.new

        expect(instance).to eq(0)
    end
end


describe 'valid input' do
    it 'sets the position of the robot' do
        robot.place(['PLACE', '1', '0', 'EAST'])

        expect(robot.position_x).to eq 1
        expect(robot.position_y).to eq 0
    end

    it 'sets the direction of the robot' do
        robot.place(['PLACE', '1', '0', 'EAST'])

        expect(robot.facing).to eq 'EAST'
    end

    it 'sets the first input' do
        robot.place(['PLACE', '1', '0', 'EAST'])

        expect(robot.facing).to eq 'PLACE'
    end
end

describe '#turn_right' do
    it 'changes the direction facing' do
        robot.place(['PLACE', '1', '2', 'EAST'])

        expect(robot.turn_right).to eq 'SOUTH'
    end
end


describe '#turn_left' do
    it 'changes the direction facing' do
      robot.place(['PLACE', '1', '2', 'EAST'])

      expect(robot.turn_left).to eq 'NORTH'
    end
end
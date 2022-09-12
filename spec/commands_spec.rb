require 'require_all'
require_all 'lib'
describe Commands do
  let(:commands) { Commands.new }

  context '#handle_request' do
    context 'when input is PLACE' do
      it 'calls robot method place' do
        input = 'PLACE 1 0 EAST'

        expect(commands.robot).to receive(:place).with(input.split)
        commands.handle_request(input)
      end
    end

    context 'when input is MOVE' do
      it 'calls robot method move' do
        input = 'MOVE'

        expect(commands.robot).to receive(:move)
        commands.handle_request(input)
      end
    end

    context 'when input is LEFT' do
      it 'calls robot method left' do
        input = 'LEFT'

        expect(commands.robot).to receive(:turn_left)
        commands.handle_request(input)
      end
    end

    context 'when input is RIGHT' do
      it 'calls robot method right' do
        input = 'RIGHT'

        expect(commands.robot).to receive(:turn_right)
        commands.handle_request(input)
      end
    end

    context 'when input is REPORT' do
      it 'calls robot method report' do
        expect(commands.robot).to receive(:report_state)
        commands.handle_request('PLACE 1 0 EAST')
        commands.handle_request('REPORT')
      end
    end
end
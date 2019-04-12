require 'weekdays.rb'

RSpec.describe Weekdays do
  it "has a version number" do
    expect(Weekdays::VERSION).not_to be nil
  end
  describe Weekdays::Converter do
    describe '.monday' do
      context '(\'2019-04-08\')' do
        it 'returns 2019-04-08' do
          expect(described_class.monday('2019-04-08')).to eq('2019-04-08')
        end
      end
      context '(\'2019-04-09\')' do
        it 'returns 2019-04-08' do
          expect(described_class.monday('2019-04-09')).to eq('2019-04-08')
        end
      end
      context '(\'2019-04-10\')' do
        it 'returns 2019-04-08' do
          expect(described_class.monday('2019-04-10')).to eq('2019-04-08')
        end
      end
      context '(\'2019-04-11\')' do
        it 'returns 2019-04-08' do
          expect(described_class.monday('2019-04-11')).to eq('2019-04-08')
        end
      end
      context '(\'2019-04-12\')' do
        it 'returns 2019-04-08' do
          expect(described_class.monday('2019-04-12')).to eq('2019-04-08')
        end
      end
      context '(\'2019-04-13\')' do
        it 'raises WeekendError' do
          expect { described_class.monday('2019-04-13') }.to raise_error(WeekendError)
        end
      end
      context '(\'2019-04-14\')' do
        it 'raises WeekendError' do
          expect { described_class.monday('2019-04-14') }.to raise_error(WeekendError)
        end
      end
      context 'with invalid date' do
        it 'raises InvalidDateError' do
          expect { described_class.monday('not a date') }.to raise_error(InvalidDateError)
        end
      end
    end
    describe '.friday' do
      context '(\'2019-04-08\')' do
        it 'returns 2019-04-12' do
          expect(described_class.friday('2019-04-08')).to eq('2019-04-12')
        end
      end
      context '(\'2019-04-09\')' do
        it 'returns 2019-04-12' do
          expect(described_class.friday('2019-04-09')).to eq('2019-04-12')
        end
      end
      context '(\'2019-04-10\')' do
        it 'returns 2019-04-12' do
          expect(described_class.friday('2019-04-10')).to eq('2019-04-12')
        end
      end
      context '(\'2019-04-11\')' do
        it 'returns 2019-04-12' do
          expect(described_class.friday('2019-04-11')).to eq('2019-04-12')
        end
      end
      context '(\'2019-04-12\')' do
        it 'returns 2019-04-12' do
          expect(described_class.friday('2019-04-12')).to eq('2019-04-12')
        end
      end
      context '(\'2019-04-13\')' do
        it 'raises WeekendError' do
          expect { described_class.friday('2019-04-13') }.to raise_error(WeekendError)
        end
      end
      context '(\'2019-04-14\')' do
        it 'raises WeekendError' do
          expect { described_class.friday('2019-04-14') }.to raise_error(WeekendError)
        end
      end
      context 'with invalid date' do
        it 'raises InvalidDateError' do
          expect { described_class.friday('not a date') }.to raise_error(InvalidDateError)
        end
      end
    end
  end
end

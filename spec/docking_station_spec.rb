require 'docking_station'

describe DockingStation do

    it { is_expected.to respond_to(:release_bike) }
    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bikes) }

    describe '#release_bike' do
      it 'raises an error when no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'   
      end
    end
        it 'releases a bike' do
          bike = Bike.new
          subject.dock(bike)
          expect(subject.release_bike).to eq bike
        end

    describe '#dock' do
      it 'raises an error when no docks available' do
      # bike = Bike.new
      20.times { subject.dock Bike.new }
        expect { subject.dock Bike.new }.to raise_error 'No docks available'   
      end
    end
end 

    # it 'returns docked bikes' do
    #     bike = Bike.new
    #     subject.dock(bike)
    #     expect(subject.bikes).to equal bike
    #   end
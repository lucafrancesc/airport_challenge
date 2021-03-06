require 'plane'

describe Plane do

  describe '#landed' do

    it { is_expected.to respond_to(:landed).with(1).argument }

    it 'returns true if the plane has landed' do
      subject.landed
      expect(subject.status).to eq 'landed'
    end

    it 'returns true if the plane has landed' do
      expect(subject.landed('no')).to eq 'The plane is still flying'
    end

  end

  describe '#taken_off' do

    it { is_expected.to respond_to(:landed).with(1).argument }

    it 'returns true if the plane has taken off' do
      expect(subject.taken_off).to eq 'flying'
    end

    it 'returns true if the plane has taken off' do
      subject.taken_off('no')
      expect(subject.taken_off("no")).to eq 'The plane is in the hangar'
    end

  end

  describe '#status' do

    it { is_expected.to respond_to :status }

    it 'returns flying if the plane has taken off' do
      subject.taken_off
      expect(subject.status).to eq 'flying'
    end

    it 'returns flying if the plane has taken off' do
      subject.landed
      expect(subject.status).to eq 'landed'
    end
  end

end

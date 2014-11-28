require 'spec_helper'

describe Cik do

  describe '.lookup' do

    context 'when a valid symbol is looked up' do

      let(:entity) { Cik.lookup('CSCO') }

      it 'returns a cik' do
        expect(entity[:cik]).to eq('0000858877')
      end

      it 'returns an entity name' do
        expect(entity[:name]).to eq('CISCO SYSTEMS, INC.')
      end

      it 'returns a sic' do
        expect(entity[:sic]).to eq('3576')
      end

    end

    context 'when an invalid symbol is looked up' do

      let(:entity) { Cik.lookup('ZZZZ') }

      it 'returns nil' do
        expect(entity).to be_nil
      end

    end

  end

end
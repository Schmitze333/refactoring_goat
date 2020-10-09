require 'introduce_explaining_variable/item'

RSpec.describe IntroduceExplainingVariable::Item do
  subject(:price) { described_class.new(quantity, item_price).price }

  context 'with quantity below 500' do
    let(:quantity) { 400 }

    context 'with 10% of total smaller than 100' do
      let(:item_price) { 0.1 }

      it { is_expected.to eq 4.0 }
    end

    context 'with 10% of total greater than 100' do
      let(:item_price) { 10.00 }

      it { is_expected.to eq 100.0 }
    end
  end

  context 'with quantity above 500' do
    let(:quantity) { 1000 }

    context 'with 10% of total smaller than 100' do
      let(:item_price) { 0.1 }

      it { is_expected.to eq 12.5 }
    end

    context 'with 10% of total greater than 100' do
      let(:item_price) { 10.00 }

      it { is_expected.to eq 350.0 }
    end
  end
end

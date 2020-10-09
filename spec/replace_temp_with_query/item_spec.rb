require 'replace_temp_with_query/item'

RSpec.describe ReplaceTempWithQuery::Item do
  subject(:item) { described_class.new(quantity, price) }

  let(:quantity) { 10 }

  context 'with a base price of 1000' do
    let(:price) { 1000.00 }

    it 'returns the correct price' do
      expect(item.price).to eq 9500.0
    end
  end

  context 'with a base price above 1000' do
    let(:price) { 2000.00 }

    it 'returns the correct price' do
      expect(item.price).to eq 19000.0
    end
  end
end

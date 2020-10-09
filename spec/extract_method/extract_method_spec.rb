require 'extract_method/extract_method'

RSpec.describe ExtractMethod::CustomOwes do
  subject(:print_owings) do
    described_class.new(name: 'John Do', orders: orders).print_owing
  end

  let(:orders) do
    [
      ExtractMethod::Order.new('Candle', 1.45),
      ExtractMethod::Order.new('Dinner', 22.50)
    ]
  end

  let(:expected_output) {}

  it 'prints out the correct customer name' do
    expected_output = <<~OUTPUT
      *************************
      ***** Customer Owes *****
      *************************
      name: John Do
      amount: 23.95
    OUTPUT

    expect { print_owings }.to output(expected_output).to_stdout
  end
end

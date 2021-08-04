# frozen_string_literal: true

RSpec.describe Halo do
  it 'returns a proper version' do
    expect(Halo::VERSION).to be_a(String)
  end

  it 'is possible to provide configure options' do
    described_class.configure do |c|
      expect(c).to eq(described_class)
    end
  end
end

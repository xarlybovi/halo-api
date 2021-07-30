# frozen_string_literal: true

RSpec.describe Halo do
  it 'returns a proper version' do
    expect(Halo::VERSION).to be_a(String)
  end
end

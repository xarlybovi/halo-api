# frozen_string_literal: true

describe Halo::Clients::HaloWars2Client do
  it { is_expected.to respond_to(:metadata) }
  it { is_expected.to respond_to(:stats) }
end

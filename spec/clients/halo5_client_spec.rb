# frozen_string_literal: true

describe Halo::Clients::Halo5Client do
  it { is_expected.to respond_to(:metadata) }
  it { is_expected.to respond_to(:profile) }
  it { is_expected.to respond_to(:stats) }
  it { is_expected.to respond_to(:ugc) }
end

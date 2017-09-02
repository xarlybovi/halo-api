require "spec_helper"

RSpec.describe Halo::Api do
  it "has a version number" do
    expect(Halo::Api::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end

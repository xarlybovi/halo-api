require 'spec_helper'
require 'pry'


describe Halo::Profile::Halo5ProfileClient do

  before(:all) do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
    end
    @client = Halo.h5_profile
  end

  it { should respond_to(:player_appearance) }
  it { should respond_to(:player_emblem_image) }
  it { should respond_to(:player_spartan_image) }

  # binding.pry
end



require 'spec_helper'
require 'pry'


describe Halo::Stats::Halo5StatsClient do

  before(:all) do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
    end
    @client = Halo.h5_stats
  end

  it { should respond_to(:company) }
  it { should respond_to(:company_commendations) }
  it { should respond_to(:leaderboard_player_csr) }
  it { should respond_to(:match_events) }
  it { should respond_to(:match_result_arena) }
  it { should respond_to(:match_result_campaign) }
  it { should respond_to(:match_result_custom) }
  it { should respond_to(:match_result_warzone) }
  it { should respond_to(:player_commendations) }
  it { should respond_to(:player_match_history) }
  it { should respond_to(:psr_arena) }
  it { should respond_to(:psr_campaign) }
  it { should respond_to(:psr_custom) }
  it { should respond_to(:psr_warzone) }
  it { should respond_to(:pc_match_result_custom) }
  it { should respond_to(:pc_player_match_history) }
  it { should respond_to(:pc_psr_custom) }

  # binding.pry
end



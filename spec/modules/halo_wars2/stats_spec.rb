describe Halo::HaloWars2::Stats do

  before(:each) do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
    end
    @client = Halo.halo_wars2
  end

  # it { should respond_to(:leaderboard_player_csr) }
  # it { should respond_to(:match_events) }
  # it { should respond_to(:match_result) }
  # it { should respond_to(:player_campaign_progress) }
  # it { should respond_to(:player_match_history) }
  # it { should respond_to(:player_playlist_ratings) }
  # it { should respond_to(:player_season_stats_summary) }
  # it { should respond_to(:player_stats_summary) }
  # it { should respond_to(:player_xp) }

  # binding.pry
end



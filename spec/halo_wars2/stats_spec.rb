require 'spec_helper'

describe Halo::HaloWars2::Stats do

  it { should respond_to(:player_leaderboards) }
  it { should respond_to(:match_events) }
  it { should respond_to(:match_result) }
  it { should respond_to(:player_campaign_progress) }
  it { should respond_to(:player_match_history) }
  it { should respond_to(:player_playlist_rating) }
  it { should respond_to(:player_season_stats) }
  it { should respond_to(:player_stats) }
  it { should respond_to(:player_xp) }

end


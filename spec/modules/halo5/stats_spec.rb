# frozen_string_literal: true

describe Halo::Halo5::Stats do
  subject(:client) { Halo.halo5 }

  before do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
    end
  end

  # it { should respond_to(:company) }
  # it { should respond_to(:company_commendations) }
  # it { should respond_to(:leaderboard_player_csr) }
  # it { should respond_to(:match_events) }
  # it { should respond_to(:match_result_arena) }
  # it { should respond_to(:match_result_campaign) }
  # it { should respond_to(:match_result_custom) }
  # it { should respond_to(:match_result_warzone) }
  # it { should respond_to(:player_commendations) }
  # it { should respond_to(:player_match_history) }
  # it { should respond_to(:psr_arena) }
  # it { should respond_to(:psr_campaign) }
  # it { should respond_to(:psr_custom) }
  # it { should respond_to(:psr_warzone) }
  # it { should respond_to(:pc_match_result_custom) }
  # it { should respond_to(:pc_player_match_history) }
  # it { should respond_to(:pc_psr_custom) }

  describe 'Stats sample request' do
    let(:result) { client.stats.player_match_history('xarly bovi') }

    it 'returns the player match history' do
      expect(result).not_to be_nil
      expect(result).to have_key 'Results'
    end
  end

  # binding.pry
end

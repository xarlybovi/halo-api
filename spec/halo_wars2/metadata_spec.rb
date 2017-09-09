require 'spec_helper'

describe Halo::HaloWars2::Metadata do

  it { should respond_to(:campaign_missions) }
  it { should respond_to(:campaign_logs) }
  it { should respond_to(:card_keywords) }
  it { should respond_to(:cards) }
  it { should respond_to(:csr_designations) }
  it { should respond_to(:difficulties) }
  it { should respond_to(:game_object_categories) }
  it { should respond_to(:leader_powers) }
  it { should respond_to(:leaders) }
  it { should respond_to(:maps) }
  it { should respond_to(:packs) }
  it { should respond_to(:playlists) }
  it { should respond_to(:seasons) }
  it { should respond_to(:spartan_ranks) }
  it { should respond_to(:techs) }

end


require './lib/race'
require './lib/candidate'
require './lib/election'

RSpec.describe Race do
  describe '#exists' do
    it 'exists' do
      election = Election.new("2023")
      
      expect(election).to be_an_instance_of(Election)
    end
 

    it "has readable attribues" do 
      election = Election.new("2023")

      expect(election.year).to eq("2023")
      expect(election.races).to eq({})
    end
  end

  describe "#add_race" do
    it "can add a race" do
      election = Election.new("2023")
      race1 = Race.new("Texas Governor")
      race2 = Race.new("Oregon Governor")

      election.add_race(race1)
      election.add_race(race2)
      expect(election.races).to eq([race1, race2])
    end
  end
end
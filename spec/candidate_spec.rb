require './lib/candidate'

describe "it exists" do
  it "exists" do
    diana = Candidate.new({name: "Diana D", party: :democrat})
    expect(diana).to be_an_instance_of(Candidate)
  end

  it "has readable attributes" do
    diana = Candidate.new({name: "Diana D", party: :democrat})
    expect(diana.name).to eq("Diana D")
    expect(diana.party).to eq(:democrat)
  end

  describe "#vote_for" do
    it "can receive votes " do
      diana = Candidate.new({name: "Diana D", party: :democrat})
      expect(diana.votes).to eq(0)
      diana.vote_for!
      diana.vote_for!
      diana.vote_for!
      expect(diana.votes).to eq(3)
      diana.vote_for!
      expect(diana.votes).to eq(4)
    end
  end
end

RSpec.describe FootballApi::Transfer do
  let(:response) { load_response('transfers') }

  before(:each) do
    stub_request(:get, uri)
      .with(headers: @headers)
      .to_return(status: 200, body: response.to_json, headers: {})
  end

  describe '.all_by_player' do
    let(:uri) { "#{@api_host}/transfers/player/19018" }

    it "requests the transfers by player endpoint" do
      expect(described_class.all_by_player(19018)).to eq(response.dig('api', 'transfers'))
    end
  end

  describe '.all_by_team' do
    let(:uri) { "#{@api_host}/transfers/team/33" }

    it "requests the transfers by team endpoint" do
      expect(described_class.all_by_team(33)).to eq(response.dig('api', 'transfers'))
    end
  end
end

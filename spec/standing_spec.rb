RSpec.describe FootballApi::Standing do
  let(:uri) { "#{@api_host}/leagueTable/1" }
  let(:response) { load_response('standings') }

  before(:each) do
    stub_request(:get, uri)
      .with(headers: @headers)
      .to_return(status: 200, body: response.to_json, headers: {})
  end

  describe '.all_by_league' do
    it "requests the standings endpoint with correct parameters" do
      expect(described_class.all_by_league(1)).to eq(response.dig('api', 'standings'))
    end
  end
end

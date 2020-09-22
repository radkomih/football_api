RSpec.describe FootballApi::Teams::Data do
  let(:response) { load_response('teams_data') }

  before(:each) do
    stub_request(:get, uri)
      .with(headers: @headers)
      .to_return(status: 200, body: response.to_json, headers: {})
  end

  describe '.find' do
    let(:uri) { "#{@api_host}/teams/team/541" }

    it "requests the teams endpoint by id with correct parameters" do
      expect(described_class.find(541)).to eq(response.dig('api', 'teams').first)
    end
  end

  describe '.all_by_league' do
    let(:uri) { "#{@api_host}/teams/league/1" }

    it "requests the teams endpoint by league with correct parameters" do
      expect(described_class.all_by_league(1)).to eq(response.dig('api', 'teams'))
    end
  end

  describe '.search' do
    let(:uri) { "#{@api_host}/teams/search/Real Madrid" }

    it "requests the teams endpoint by search term with correct parameters" do
      expect(described_class.search('Real Madrid')).to eq(response.dig('api', 'teams'))
    end
  end
end

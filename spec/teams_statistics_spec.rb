RSpec.describe FootballApi::Teams::Statistic do
  let(:response) { load_response('teams_statistics') }

  before(:each) do
    stub_request(:get, uri)
      .with(headers: @headers)
      .to_return(status: 200, body: response.to_json, headers: {})
  end

  describe '.all_by_league_and_team' do
    let(:uri) { "#{@api_host}/statistics/1/10" }

    it "requests the teams statistics endpoint by league and team with correct parameters" do
      expect(described_class.all_by_league_and_team(1, 10)).to eq(response.dig('api', 'statistics'))
    end
  end

  describe '.all_by_league_and_team_and_date' do
    let(:uri) { "#{@api_host}/statistics/1/10/2019-02-10" }

    it "requests the teams statistics endpoint by league team and date with correct parameters" do
      expect(described_class.all_by_league_and_team_and_date(1, 10, '2019-02-10')).to eq(response.dig('api', 'statistics'))
    end
  end
end

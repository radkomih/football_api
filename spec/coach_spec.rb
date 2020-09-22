RSpec.describe FootballApi::Coach do
  let(:response) { load_response('coachs') }

  before(:each) do
    stub_request(:get, uri)
      .with(headers: @headers)
      .to_return(status: 200, body: response.to_json, headers: {})
  end

  describe '.find' do
    let(:uri) { "#{@api_host}/coachs/coach/18" }

    it "requests the coachs by id endpoint" do
      expect(described_class.find(18)).to eq(response.dig('api', 'coachs').first)
    end
  end

  describe '.all_by_team' do
    let(:uri) { "#{@api_host}/coachs/team/42" }

    it "requests the coachs by team endpoint" do
      expect(described_class.all_by_team(42)).to eq(response.dig('api', 'coachs'))
    end
  end

  describe '.search' do
    let(:uri) { "#{@api_host}/coachs/search/Unai Emery" }

    it "requests the coachs by search term endpoint" do
      expect(described_class.search('Unai Emery')).to eq(response.dig('api', 'coachs'))
    end
  end
end

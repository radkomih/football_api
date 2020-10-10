RSpec.describe FootballApi::Trophey do
  let(:response) { load_response('trophies') }

  before(:each) do
    stub_request(:get, uri)
      .with(headers: @headers)
      .to_return(status: 200, body: response.to_json, headers: {})
  end

  describe '.all_by_player' do
    let(:uri) { "#{@api_host}/trophies/player/276" }

    it "requests the trophies by player endpoint" do
      expect(described_class.all_by_player(276)).to eq(response.dig('api', 'trophies'))
    end
  end

  describe '.all_by_coach' do
    let(:uri) { "#{@api_host}/trophies/coach/2" }

    it "requests the trophies by coach endpoint" do
      expect(described_class.all_by_coach(2)).to eq(response.dig('api', 'trophies'))
    end
  end
end

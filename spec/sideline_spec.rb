RSpec.describe FootballApi::Sideline do
  let(:response) { load_response('sidelined') }

  before(:each) do
    stub_request(:get, uri)
      .with(headers: @headers)
      .to_return(status: 200, body: response.to_json, headers: {})
  end

  describe '.all_by_player' do
    let(:uri) { "#{@api_host}/sidelined/player/276" }

    it "requests the sidelined by player endpoint" do
      expect(described_class.all_by_player(276)).to eq(response.dig('api', 'sidelined'))
    end
  end

  describe '.all_by_coach' do
    let(:uri) { "#{@api_host}/sidelined/coach/2" }

    it "requests the sidelined by coach endpoint" do
      expect(described_class.all_by_coach(2)).to eq(response.dig('api', 'sidelined'))
    end
  end
end

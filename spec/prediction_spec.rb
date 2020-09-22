RSpec.describe FootballApi::Prediction do
  let(:response) { load_response('predictions') }

  before(:each) do
    stub_request(:get, uri)
      .with(headers: @headers)
      .to_return(status: 200, body: response.to_json, headers: {})
  end

  describe '.all_by_fixture' do
    let(:uri) { "#{@api_host}/predictions/1" }

    it "requests the predictions endpoint" do
      expect(described_class.all_by_fixture(1)).to eq(response.dig('api', 'predictions'))
    end
  end
end

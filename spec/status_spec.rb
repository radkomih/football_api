RSpec.describe FootballApi::Status do
  let(:response) { load_response('status') }

  before(:each) do
    stub_request(:get, uri)
      .with(headers: @headers)
      .to_return(status: 200, body: response.to_json, headers: {})
  end

  describe '.info' do
    let(:uri) { "#{@api_host}/status" }

    it "requests the status info endpoint" do
      expect(described_class.info).to eq(response.dig('api', 'status'))
    end

    context 'when using the rapidapi' do
      it 'requesting the status info endpoint raises an error' do
        FootballApi.configuration.api_host = FootballApi::Configuration::RAPID_API_HOST

        expect { described_class.info }.to raise_error { FootballApi::Errors::UnsupportedError }
      end
    end
  end
end

RSpec.describe FootballApi::League do
  let(:response) { load_response('leagues') }

  before(:each) do
    stub_request(:get, uri)
      .with(headers: @headers)
      .to_return(status: 200, body: response.to_json, headers: {})
  end

  describe '.all' do
    let(:uri) { "#{@api_host}/leagues" }

    it "requests the endpoint for all leagues with correct parameters" do
      expect(described_class.all).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.find' do
    let(:uri) { "#{@api_host}/leagues/league/1" }

    it "requests the endpoint for specific league with correct parameters" do
      expect(described_class.find(1)).to eq(response.dig('api', 'leagues').first)
    end
  end

  describe '.all_by_team' do
    let(:uri) { "#{@api_host}/leagues/team/1" }

    it "requests the endpoint for all leagues by team with correct parameters" do
      expect(described_class.all_by_team(1)).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.all_by_team_and_season' do
    let(:uri) { "#{@api_host}/leagues/team/1/2018" }

    it "requests the endpoint for all leagues by team and season with correct parameters" do
      expect(described_class.all_by_team_and_season(1, 2018)).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.search' do
    let(:uri) { "#{@api_host}/leagues/search/World Cup" }

    it "requests the endpoint for all leagues by search term with correct parameters" do
      expect(described_class.search('World Cup')).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.all_by_country' do
    let(:uri) { "#{@api_host}/leagues/country/Brazil" }

    it "requests the endpoint for all leagues by country with correct parameters" do
      expect(described_class.all_by_country('Brazil')).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.all_by_country_and_season' do
    let(:uri) { "#{@api_host}/leagues/country/Brazil/2018" }

    it "requests the endpoint for all leagues by country with correct parameters" do
      expect(described_class.all_by_country_and_season('Brazil', 2018)).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.all_by_code' do
    let(:uri) { "#{@api_host}/leagues/country/FR" }

    it "requests the endpoint for all leagues by country code with correct parameters" do
      expect(described_class.all_by_code('FR')).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.all_by_code_and_season' do
    let(:uri) { "#{@api_host}/leagues/country/FR/2018" }

    it "requests the endpoint for all leagues by country code and season with correct parameters" do
      expect(described_class.all_by_code_and_season('FR', 2018)).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.all_by_season' do
    let(:uri) { "#{@api_host}/leagues/season/2018" }

    it "requests the endpoint for all leagues by season with correct parameters" do
      expect(described_class.all_by_season(2018)).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.all_seasons_by_league' do
    let(:uri) { "#{@api_host}/leagues/seasonsAvailable/1" }

    it "requests the endpoint for all seasons by league with correct parameters" do
      expect(described_class.all_seasons_by_league(1)).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.all_by_league_and_season' do
    let(:uri) { "#{@api_host}/leagues/seasonsAvailable/1/2018" }

    # It is confusing. Why we need such endpoint???
    it "requests the endpoint for all seasons by league and season with correct parameters" do
      expect(described_class.all_by_league_and_season(1, 2018)).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.all_current' do
    let(:uri) { "#{@api_host}/leagues/current" }

    it "requests the endpoint for all current seasons for all leagues with correct parameters" do
      expect(described_class.all_current).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.all_current_by_country' do
    let(:uri) { "#{@api_host}/leagues/current/Brazil" }

    it "requests the endpoint for all current seasons for all leagues from one country with correct parameters" do
      expect(described_class.all_current_by_country('Brazil')).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.all_by_type' do
    let(:uri) { "#{@api_host}/leagues/type/Cup" }

    it "requests the endpoint for all leagues by type with correct parameters" do
      expect(described_class.all_by_type('Cup')).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.all_by_type_and_country' do
    let(:uri) { "#{@api_host}/leagues/type/Cup/Brazil" }

    it "requests the endpoint for all leagues by type and country with correct parameters" do
      expect(described_class.all_by_type_and_country('Cup', 'Brazil')).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.all_by_type_and_country_and_season' do
    let(:uri) { "#{@api_host}/leagues/type/Cup/Brazil/2018" }

    it "requests the endpoint for all leagues by type country and season with correct parameters" do
      expect(described_class.all_by_type_and_country_and_season('Cup', 'Brazil', 2018)).to eq(response.dig('api', 'leagues'))
    end
  end

  describe '.all_by_type_and_season' do
    let(:uri) { "#{@api_host}/leagues/type/Cup/2018" }

    it "requests the endpoint for all leagues by type and season with correct parameters" do
      expect(described_class.all_by_type_and_season('Cup', 2018)).to eq(response.dig('api', 'leagues'))
    end
  end
end

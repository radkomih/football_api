require 'football_api/base_resource'

module FootballApi
  class League < BaseResource
    class << self
      def find(league_id)
        first("league/#{league_id}")
      end

      def all_by_team(team_id, **options)
        fetch("team/#{team_id}", options)
      end

      def all_by_team_and_season(team_id, season, **options)
        fetch("team/#{team_id}/#{season}", options)
      end

      def search(name_or_country, **options)
        search_term = URI.encode(name_or_country)

        fetch("search/#{search_term}", options)
      end

      def all_by_country(country, **options)
        fetch("country/#{country}", options)
      end

      def all_by_country_and_season(country, season, **options)
        fetch("country/#{country}/#{season}", options)
      end

      def all_by_code(code, **options)
        fetch("country/#{code}", options)
      end

      def all_by_code_and_season(code, season, **options)
        fetch("country/#{code}/#{season}", options)
      end

      def all_by_season(season, **options)
        fetch("season/#{season}", options)
      end

      def all_seasons_by_league(league_id, **options)
        fetch("seasonsAvailable/#{league_id}", options)
      end

      def all_by_league_and_season(league_id, season, **options)
        fetch("seasonsAvailable/#{league_id}/#{season}", options)
      end

      def all_current(**options)
        fetch('current', options)
      end

      def all_current_by_country(country, **options)
        fetch("current/#{country}", options)
      end

      def all_by_type(type, **options)
        fetch("type/#{type}", options)
      end

      def all_by_type_and_country(type, country, **options)
        fetch("type/#{type}/#{country}", options)
      end

      def all_by_type_and_country_and_season(type, country, season, **options)
        fetch("type/#{type}/#{country}/#{season}", options)
      end

      def all_by_type_and_season(type, season, **options)
        fetch("type/#{type}/#{season}", options)
      end

      private

      def resource
        'leagues'
      end
    end
  end
end

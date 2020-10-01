require 'football_api/connection'

module FootballApi
  class BaseResource
    class << self
      include FootballApi::Connection

      def all(**options)
        fetch(nil, options)
      end

      def first(ident)
        fetch(ident)&.first
      end

      private

      def fetch(ident = nil, **options)
        path = resource_path || [namespace, resource.downcase].compact
        uri = [path, ident].compact.join('/')
        query_params = build_params(options)
        uri += query_params if query_params
        uri = URI.encode(uri)
        format_result(get(uri))
      end

      def build_params(options)
        query_params = options.map { |k,v| "#{k}=#{v}" }.join('?')
        query_params != '' ? "?#{query_params}" : nil
      end

      def format_result(result)
        result.dig(resource)
      end

      # some endpoints are a bit different from the rest
      # and does not match the returned resource
      def resource_path
        nil
      end

      def namespace
        nil
      end

      def resource
        raise NotImplementedError
      end
    end
  end
end

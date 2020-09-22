require "json"

module Helpers
  def load_response(filename)
    path = File.join(File.expand_path(File.dirname(__FILE__)), 'json_responses', "#{filename}.json")
    file = File.read(path)
    JSON.parse(file)
  end
end

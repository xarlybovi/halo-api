module Halo
  class APIResponse

    attr_accessor :data

    def initialize(options = {})
      @data           = []
      @client         = options[:client]
    end

    # TODO: retrieve all items from paged data
    def get_data(path, options)
      return if @client.nil?
      response = @client.get(path, options)
      @data = response.parsed_response
    end

  end
end
class NextLaunchController < ApplicationController
  def index
    @launch = api_client.next_launch
  end

  private

  def api_client
    @client ||= SpacexApi::V3::Client.new
  end
end

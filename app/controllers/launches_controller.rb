class LaunchesController < ApplicationController
  def index
    @launches = api_client.all_launches
  end

  def show

  end

  private

  def api_client
    @client ||= SpacexApi::V3::Client.new
  end
end

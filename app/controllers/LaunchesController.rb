class LaunchesController < ApplicationController
  def index
    @launches = api_client.all_launches
  end

  def show
    @launch = api_client.one_launch(launch_params)
  end

  private

  def launch_params
    params.require(@params).permit(:id)
  end

  def api_client
    @client ||= SpacexApi::V3::Client.new
  end
end

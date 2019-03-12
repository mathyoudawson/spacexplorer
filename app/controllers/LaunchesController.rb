class LaunchesController < ApplicationController
  def index
    @launches = api_client.all_launches
  end

  def show
    @launch = api_client.one_launch(params[:id])
  end

  private

  def launch_params
    params.require(:id).permit!
  end

  def api_client
    SpacexApi::V3::Client.new
  end
end

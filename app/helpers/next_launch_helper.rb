module NextLaunchHelper
  def time_until_launch(launch_time)
    launch_datetime = launch_time.to_datetime
    TimeDifference.between(DateTime.current, launch_datetime).humanize
  end

  def formatted_launch_time(launch_time)
    launch_time.to_datetime.strftime("%R %A, %d of %B %Y")
  end
end

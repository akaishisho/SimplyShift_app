# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

require File.expand_path(File.dirname(__FILE__) + "/environment")
rails_env = Rails.env.to_sym
set :environment, rails_env
set :output, 'log/cron.log'
# 毎月初の0時に、現在の月の2月前の月末から10日以上前にcreateされたshiftsテーブルのレコードを全て削除する
# crontab形式での指定
# 左から「分」「時」「日」「月」「曜日」
every '0 0 1 * *' do
  begin
    runner 'Shift.where("created_at < ?", (Date.today.end_of_month - 2.month) -9.day).delete_all'
  rescue => e
    Rails.logger.error("aborted rails runner")
    raise e
  end
end
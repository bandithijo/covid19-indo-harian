# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   # the following tasks are run in parallel (not in sequence)
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

# Every change this schedule.rb, please update the cronjob list with:
# $ whenever --update-crontab

env :PATH, ENV['PATH']
set :environment, "development"
set :output, 'log/rake.log'

project_dir = `echo $PWD`.strip
every 1.day, at: ['5.00 pm'] do
  command "cd #{project_dir}; \
           rake scraper:run; \
           rake scraper:seed:commit; \
           git push -u origin master; \
           git push -u heroku master"
end

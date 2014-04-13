# set :environment, :development
set :output, "#{path}/log/cron.log"

every 1.day do
  rake "delete_to_do_items"
end
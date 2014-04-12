set :output, "#{path}/log/cron.log"

every 1.minute do
  rake "delete_to_do_items"
end
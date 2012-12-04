desc "Clears all messages from the database to prevent overflowing free Heroku allowance."
task :reset_database => :environment do
  Rake::Task['db:reset'].invoke
  Rake::Task['db:migrate'].invoke
end

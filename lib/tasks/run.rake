require 'date'

namespace :scraper do
  desc 'Starts the scraper script'
  task :run do
    system 'RUBYOPT=-W0 rake run_scraping'
  end

  desc 'Run git add & commit the db/seeds'
  namespace :seed do
    task :commit do
      system """
      git add db/seeds/case_seed.rb
      git commit -m 'Update: Case data #{Date.today}'
      git add db/seeds/score_seed.rb
      git commit -m 'Update: Score data #{Date.today}'
      """
    end
  end
end

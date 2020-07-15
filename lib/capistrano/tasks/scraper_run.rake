namespace :scraper do
  desc "Starts the scraper script"
  task :run do
    on roles(:app) do
      within "#{current_path}" do
        with rails_env: "#{fetch(:stage)}" do
          system "RUBYOPT=-W0 rake run_scraping"
        end
      end
    end
  end
end

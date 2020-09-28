# frozen_string_literal: true

task run_scraping: :environment do
  Scraper.run_scraping
rescue ActiveRecord::NoDatabaseError
  puts 'WARNING: BELUM CREATE DATABASE'
  puts "CREATE DATABASE: 'web_scraper_development'\n"
  rake_run('db:create')
  puts "DATABASE CREATED\n"
  puts 'WARNING: BELUM CREATE SCHEME'
  puts "RUN MIGRATION: 'covid_kemkes_pasien'\n"
  rake_run('db:migrate')
  puts "MIGRATION MIGRATED\n"
  sleep 5
  Scraper.run_scraping
rescue ActiveRecord::StatementInvalid
  puts 'WARNING: BELUM CREATE SCHEME'
  puts "RUN MIGRATION: 'covid_kemkes_pasien'\n"
  sleep 3
  rake_run('db:migrate')
  puts "MIGRATION MIGRATED\n"
  Scraper.run_scraping
rescue PG::ConnectionBad
  puts 'WARNING: POSTGRESQL SERVICE BELUM ACTIVE & RUNNING'
  puts "Silahkan menjalankan PostgreSQL service terlebih dahulu\n"
end

class Scraper
  def self.run_scraping
    require_relative 'scraper/scraper_case'
    require_relative 'scraper/scraper_score'

    return if Case.all.empty? || Score.all.empty? do
      puts 'PERHATIAN: Database Kosong'
      puts 'Program akan menjalankan proses seeding...'
      sleep 3
      rake_run('db:seed')
      puts 'SEEDING BERHASIL!'
      sleep 3
      puts ''
    end
  end
end

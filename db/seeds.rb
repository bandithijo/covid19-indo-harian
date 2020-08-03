Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].each do |seed|
  load seed
end

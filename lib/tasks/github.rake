namespace :github do
  desc 'commit with message'
  task :commit, [:message] => :environment do |args|
    sh %(git add -A)
    sh %(git commit -m "#{args.message}")
    sh %(git push)
  end
end

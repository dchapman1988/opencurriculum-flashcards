echo "installing the rvm ruby and gemset"
rvm install ruby-1.9.2-p318
source .rvmrc

echo "installing the gems"
gem install bundler
bundle

echo "setting up the database"
cp config/database.yml.example.sqlite3 config/database.yml
bundle exec rake db:migrate

echo "running the test suite"
bundle exec rake test
bundle exec spinach

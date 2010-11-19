namespace :db do
  namespace :test do
    task :prepare do
      connect = Mongo::Connection.new('127.0.0.1')
      connect.db('photos_test').collections.each { |c| c.remove }
    end
  end
end

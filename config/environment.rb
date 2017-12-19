require 'sinatra/activerecord'

#The environment variable DATABASE_URL should be in the following format:
# => postgres://{user}:{password}@{host}:{port}/path
configure :production, :development do
  db = URI.parse(ENV['DATABASE_URL'] || "postgres://#{ENV['DATA_DB_USER']}:#{ENV['DATA_DB_PASS']}@#{ENV['DATA_DB_HOST']}/gonano")

  ActiveRecord::Base.establish_connection(
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
end
#https://guides.nanobox.io/ruby/sinatra/add-a-database/

require_all 'app'
#adapter: postgresql
#https://th3silverlining.com/2012/04/22/using-the-heroku-shared-database-with-sinatra-and-active-record/
# ENV['SINATRA_ENV'] ||= "development"

# require 'bundler/setup'
# Bundler.require(:default, ENV['SINATRA_ENV'])

# ActiveRecord::Base.establish_connection(
#   :adapter => "sqlite3",
#   :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
# )

# require_all 'app'

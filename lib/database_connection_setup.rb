require_relative 'database_connection.rb'

DatabaseConnection.setup('bookmark_manager_test') if ENV['ENVIRONMENT'] == 'test'
DatabaseConnection.setup('bookmark_manager')

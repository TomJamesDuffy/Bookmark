require 'database_connection.rb'

describe DatabaseConnection do
  subject(:dc) { DatabaseConnection.new }

  describe '#setup' do
    it 'sets up the connection to the database' do
      expect(DatabaseConnection.setup('bookmark_manager_test')).to_not be_nil
    end
  end

  describe '#query' do
    it 'executes the query string on the correct database' do
      DatabaseConnection.setup('bookmark_manager_test')
      expect(DatabaseConnection.query('SELECT * FROM links')).to_not be_nil
    end
  end
end


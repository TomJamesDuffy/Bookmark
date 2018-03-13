require 'database_connection.rb'

describe DatabaseConnection do
  subject(:dc) { DatabaseConnection.new }

  describe '#setup' do
    it 'this connection is persistent' do
      connection = DatabaseConnection.setup('bookmark_manager_test')
      expect(connection).to eq connection
    end
  end

  describe '#query' do
    it 'executes the query string on the correct database' do
      connection = DatabaseConnection.setup('bookmark_manager_test')
      expect(connection).to receive(:exec).with('SELECT * FROM links')
      expect(DatabaseConnection.query('SELECT * FROM links'))
    end
  end
end


RSpec.describe User, type: :model do
  describe 'db table' do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :id }
  end
end

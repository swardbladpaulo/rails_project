feature 'Visitor can write an article' do
  let(:user) { FactoryBot.create(:user) }
  
  before do
    login_as(user, scope: :user)
    visit root_path
    click_on 'Write'
  end

  context 'by providing all necessary information' do
  before do
    fill_in 'Title', with: 'Another greate demo from Thomas'
    fill_in 'Content', with: 'Learning this stuff is alright'
    click_on 'Create Article'
  end

    it 'is expected to save a new article in the database' do
      expect(Article.count).to eq 1      
    end

    it 'is expected to respond with a flash message' do
      expect(page).to have_content 'Your article was sucessfully created'
    end

    it 'is expected to re-route user to applications root path' do
      expect(current_path).to eq root_path
    end
  end
end
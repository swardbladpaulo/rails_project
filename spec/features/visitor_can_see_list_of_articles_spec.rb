feature 'list articles on index page' do
  context 'with articles in db' do
    before do
      visit root_path
    end

    it 'displays first article title' do
      expect(page).to have_content 'A breaking news item'
    end

    it 'displays the second articles' do
      expect(page).to have_content 'Some really breaking action'
    end
  end
end
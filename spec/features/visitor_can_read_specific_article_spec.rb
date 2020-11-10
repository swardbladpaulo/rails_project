feature 'Visistor can read specific article' do
  before do
    create(:article, title: 'A breaking news item', content: 'You can not believe what happened')

    visit root_path
    click_on 'A breaking news item'
  end

  context 'Article displays' do
    it 'title' do
      expect(page).to have_content 'A breaking news item'
    end

    it 'content' do
      expect(page).to have_content 'You can not believe what happened'
    end
  end
end
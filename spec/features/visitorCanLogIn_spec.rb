feature 'Visitor can login' do
  let(:user){FactoryBot.create(:user)}

  before do
    visit root_path
    click_on 'Login'
  end

  context 'visitor can login by providing credentials' do
    before do
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_on "Submit"
    end

    it 'user get redirected to their homepage after succesful login' do
      expect(current_path).to eq root_path
    end

    it 'user can see a success message' do
      expect(page).to have_content "Signed in successfully."
    end
end
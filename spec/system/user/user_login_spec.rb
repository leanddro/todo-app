require 'rails_helper'

describe 'usuário entrar no sistema' do
  it 'com sucesso' do
    User.create!(name: 'João', email: 'joao@email.com', password: 'password')

    visit root_path
    within 'nav' do
      click_on 'Entrar'
    end

    within 'form' do
      fill_in 'E-mail', with: 'joao@email.com'
      fill_in 'Senha', with: 'password'

      click_on 'Entrar'
    end
    expect(page).to have_content 'joao@email.com'
  end
end

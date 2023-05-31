require 'rails_helper'

describe 'usuário se registrar no sistema' do
  it 'com sucesso' do
    visit root_path
    within 'nav' do
      click_on 'Entrar'
    end

    click_on 'Inscrever-se'

    fill_in 'Nome', with: 'João'
    fill_in 'E-mail', with: 'joao@email.com'
    fill_in 'Senha', with: 'password'
    fill_in 'Confirme sua senha', with: 'password'
    click_on 'Inscrever-se'

    expect(page).to have_content 'joao@email.com'
  end
end

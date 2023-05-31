require 'rails_helper'

describe 'usuário cria novo tipo de todo list' do
  it 'com sucesso' do
    user = User.create!(name: 'João', email: 'joao@email.com', password: 'password')

    login_as user
    visit root_path

    click_on 'Novo tipo'

    fill_in 'Nome', with: 'Escola'
    fill_in 'Descrição', with: 'Atividade escolares'
    click_on 'Salvar'

    expect(page).to have_content 'Tipo salvo com sucesso.'
  end
end


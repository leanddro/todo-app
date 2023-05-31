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
  it 'com falha' do
    user = User.create!(name: 'João', email: 'joao@email.com', password: 'password')

    login_as user
    visit root_path

    click_on 'Novo tipo'

    fill_in 'Nome', with: ''
    fill_in 'Descrição', with: ''
    click_on 'Salvar'

    expect(page).to have_content 'Nome não pode ficar em branco'
    expect(page).to have_content 'Descrição não pode ficar em branco'
    expect(current_page).to eq new_type_path
  end
end


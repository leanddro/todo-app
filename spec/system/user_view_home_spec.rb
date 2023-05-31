require 'rails_helper'

describe 'usuário ver a pagina home' do
  it 'com sucesso' do
    visit root_path

    expect(page).to have_content 'TODO APP'
  end
end


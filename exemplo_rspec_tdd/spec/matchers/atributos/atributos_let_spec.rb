require('pessoa')

RSpec.describe 'Atributos' do
  let(:pessoa) { Pessoa.new }

  it 'have_attributes' do
    pessoa.nome = 'Victor'
    pessoa.idade = 29

    expect(pessoa).to(have_attributes(nome: a_string_starting_with('V'), idade: (a_value >= 29)))
  end

  it 'have_attributes' do
    pessoa.nome = 'Jose'
    pessoa.idade = 25

    expect(pessoa).to(have_attributes(nome: a_string_starting_with('J'), idade: (a_value >= 20)))
  end
end

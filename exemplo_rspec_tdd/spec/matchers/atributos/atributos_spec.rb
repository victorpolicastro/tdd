require('pessoa')

RSpec.describe 'Atributos' do
  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.name = 'Victor'
    pessoa.age = 29

    expect(pessoa).to(have_attributes(name: a_string_starting_with('V'), age: (a_value >= 29)))
  end
end

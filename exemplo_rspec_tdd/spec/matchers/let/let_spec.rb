$counter = 0

RSpec.describe do
  let(:count) { $counter += 1 }

  it 'memoriza o valor' do
    expect(count).to(eq(1)) # 1a vez é invocado
    expect(count).to(eq(1)) # 2a fica em cache
  end

  it 'não é cacheado entre os testes' do
    expect(count).to(eq(2)) # 3a é carregado
  end
end

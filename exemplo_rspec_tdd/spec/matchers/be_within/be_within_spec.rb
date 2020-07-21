RSpec::Matchers.define_negated_matcher :be_not_within, :be_within

RSpec.describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(12) }
  it { expect(11.4).to be_not_within(0.5).of(12) }
  it { expect([11.6, 12.1, 12.4]).to all(be_within(0.5).of(12)) }
end

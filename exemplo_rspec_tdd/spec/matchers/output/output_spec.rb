RSpec.describe do
  it { expect{p 'victor'}.to output.to_stdout }
  it { expect{print 'victor'}.to output('victor').to_stdout }
  it { expect{p 'victor policastro'}.to output(/victor/).to_stdout }

  it { expect{warn('victor')}.to output.to_stderr }
  it { expect{warn('victor')}.to output("victor\n").to_stderr }
  it { expect{warn('victor policastro')}.to output(/victor/).to_stderr }
end

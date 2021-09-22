# sum_of_nth_series_spec.rb

describe series_sum do
  it { should.raise_error('not a number') }
  it { is_expected.to eq(1.00) }
  it { is_expected.to eq(1.25) }
  it { is_expected.to eq(1.39) }
end

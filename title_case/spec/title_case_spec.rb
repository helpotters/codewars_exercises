# title_case_spec.rb
require_relative './../title_case'

describe 'codewars' do
  context 'returns the title in proper titlecase' do
    it 'should return nothing' do
      expect(title_case(' ', '')).to eq ''
    end
    it 'should return A Clash of Kings' do
      title = 'a ClaSh oF kings'
      lowercase_words = 'a of'
      expect(title_case(title, lowercase_words)).to eq('A Clash of Kings')
    end
    it 'should change all-caps str to titlecase' do
      title = 'THE GALE OF WINDS'
      lowercase_words = 'The In of'
      result = title_case(title, lowercase_words)
      expect(result).to eq('The Gale of Winds')
    end
    it 'should capitalize all of the words' do
      title = 'the quick brown fox'
      result = title_case(title)
      expect(result).to eq('The Quick Brown Fox')
    end
  end
end

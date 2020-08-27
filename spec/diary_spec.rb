require 'diary'

describe Diary do

	describe '.list' do
		it 'displays a list of diary entries' do
			expect(Diary.list).to include "Week 4"
		end
	end

	describe '.add' do
		it 'adds an entry to the diary' do
			diary = Diary.add("Week 5")
			p diary
			expect(diary.list).to include "Week 5"

		end
	end

end
 

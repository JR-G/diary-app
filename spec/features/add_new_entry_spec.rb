feature 'Diary entries' do
    scenario 'it list the diary entries' do
        visit '/'
        expect(page).to have_content "My Makers journey"
    end

    scenario 'it adds a diary entry' do
        visit '/add'
        fill_in :entry, with: "Week 4"
        click_button 'Submit'
        expect(page).to have_content "week 4"
    end

end
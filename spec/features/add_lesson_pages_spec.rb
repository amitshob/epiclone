require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_on 'New Lesson'
    fill_in 'Title', :with => 'brand new lesson'
    fill_in 'Content', :with => 'garbage'
    fill_in 'Number', :with => '6'
    click_on 'Create Lesson'
    expect(page).to have_content 'Lessons'
  end
end

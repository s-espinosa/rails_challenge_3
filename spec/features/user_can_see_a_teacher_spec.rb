require 'rails_helper'

describe 'When a user visits /teachers/:id' do
  it 'they see information about an individual teacher' do
    teacher = Teacher.create(first_name: "Ilana", last_name: "Corson")

    visit teacher_path(teacher)

    within('h1') do
      expect(page).to have_content("Ilana Corson")
    end
  end
end

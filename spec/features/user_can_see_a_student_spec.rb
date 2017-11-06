require 'rails_helper'

describe 'When a user visits /students/:id' do
  it 'they see information about a student' do
    student = Student.create(name: "Bernie Worrell")

    visit student_path(student)

    within("h1") do
      expect(page).to have_content("Bernie Worrell")
    end
  end
end

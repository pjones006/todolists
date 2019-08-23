class Person < ApplicationRecord
    has_one :personal_info # I added this
    has_many :jobs          # I added this
    has_many :my_jobs, class_name: "Job"    # I added this
    has_and_belongs_to_many :hobbies    # I added this
    has_many :approx_salaries, through: :jobs, source: :salary_range

    def max_salary
        approx_salaries.maximum(:max_salary)
    end
end
# According to lecture, there should be 'has_one :personal_info'
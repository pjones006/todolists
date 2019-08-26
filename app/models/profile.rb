class Profile < ActiveRecord::Base
  belongs_to :user
  validate :presence_of_first_or_last_name 
  validate :males_no_sue
  validates :gender, inclusion: %w(male female Male Female)

  def self.get_all_profiles(start_year, end_year) 
    where(birth_year: start_year..end_year).order(:birth_year ) 
  end

  def presence_of_first_or_last_name
    if (first_name.blank? && last_name.blank?)
      errors[:base] << ("Specify a first or a last.")
    end
  end

  def males_no_sue
    if (gender == "male" && first_name == "Sue") 
        puts "true"
        errors[:base] << ("Sue is not the name of a male.")
    end
  end

end
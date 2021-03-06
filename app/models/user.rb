class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :cohort_id, :presence => true
  validates :email, :presence => true

  belongs_to :cohort
  has_many :interactions
  has_many :goal_attempts

  def full_name
    return "#{self.last_name}, #{self.first_name}"
  end

  def first_initial
    return "#{self.first_name.chars.first}. #{self.last_name}"
  end
  
  def first_last
    return "#{self.first_name} #{self.last_name}"
  end

end

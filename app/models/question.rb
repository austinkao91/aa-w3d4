# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  text       :string
#  poll_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Question < ActiveRecord::Base
  validates :poll_id, presence: true
  validates :text, presence: true

  has_many :answer_choices,
    class_name: "AnswerChoice",
    foreign_key: :question_id,
    primary_key: :id

  belongs_to :poll,
    class_name: "Poll",
    foreign_key: :question_id,
    primary_key: :id

  has_many :responses,
    through: :answer_choices,
    source: :responses
end

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
    foreign_key: :poll_id,
    primary_key: :id

  has_many :responses,
    through: :answer_choices,
    source: :responses

    def results
      res = Hash.new(0)
      answer_choices.includes(:responses).group("answer_choices.id").count("user_id")
      # answer_choices.includes(:responses).each do |ans|
        res[ans.text] += ans.responses.length
      end
      res
    end
end

# == Schema Information
#
# Table name: responses
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  answer_choice_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class Response < ActiveRecord::Base
  # validates :
  validates :user_id, presence: true
  validates :answer_choice, presence: true
  validate :respondent_has_not_already_answered_question, :respondent_is_not_author

  belongs_to :answer_choice,
    class_name: "AnswerChoice",
    foreign_key: :answer_choice_id,
    primary_key: :id

  belongs_to :respondent,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id

  has_one :question,
    through: :answer_choice,
    source: :question

  def sibling_responses
    self.question.responses.where("responses.id != ? OR ? IS NULL", self.id, self.id)
  end

  def respondent_is_not_author
    #debugger
    return unless answer_choice && answer_choice.persisted?
    if question.poll.author_id == respondent.id
      errors[:respondent] << "respondent cannot answer their own poll/question."
    end

  end

  def respondent_has_not_already_answered_question
    #debugger
    return unless answer_choice && answer_choice.persisted?
    unless sibling_responses.where("responses.user_id = ?", respondent.id).empty?
      errors[:respondent] << "respondent cannot answer the same question more than once."
    end
  end

end

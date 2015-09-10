# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ user_name: 'Chicago' }, { user_name: \'Copenhagen' }])
#   Mayor.create(user_name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do

  User.create!(id: 1, user_name: 'Glen')
  User.create!(id: 2, user_name: 'Steve')
  User.create!(id: 3, user_name: 'Philbert')
  User.create!(id: 4, user_name: 'Todd')
  User.create!(id: 5, user_name: 'Cylinda')
  User.create!(id: 6, user_name: 'Jovonne')
  User.create!(id: 7, user_name: 'Ithuana')
  User.create!(id: 8, user_name: 'Modesa')
  User.create!(id: 9, user_name: 'Levi')

  Poll.create!(id: 1, title: 'Favorite Stuff', author_id: 3)
  Poll.create!(id: 2, title: 'First things, first', author_id: 9)
  Poll.create!(id: 3, title: 'Levels of fear', author_id: 3)

  Question.create!(id: 1, text: 'What is your favorite Cola?', poll_id: 1)
  Question.create!(id: 2, text: 'What is your favorite writing instrument?', poll_id: 1)
  Question.create!(id: 3, text: 'What is your favorite shade of blue?', poll_id: 1)
  Question.create!(id: 4, text: 'What was your first pet?', poll_id: 2)
  Question.create!(id: 5, text: 'What was your first vehicle\'s fuel type?', poll_id: 2)
  Question.create!(id: 6, text: 'How afraid are you of snakes?', poll_id: 3)
  Question.create!(id: 7, text: 'How afraid are you of heights?', poll_id: 3)
  Question.create!(id: 8, text: 'How afraid are you of getting stranded in an underwater tunnel?', poll_id: 3)

  AnswerChoice.create!(id: 1, text: 'Pepsi', question_id: 1)
  AnswerChoice.create!(id: 2, text: 'Coke', question_id: 1)

  AnswerChoice.create!(id: 11, text: 'Dog', question_id: 4)
  AnswerChoice.create!(id: 12, text: 'Cat', question_id: 4)
  AnswerChoice.create!(id: 13, text: 'BeaverFish', question_id: 4)
  AnswerChoice.create!(id: 14, text: 'Other', question_id: 4)
  AnswerChoice.create!(id: 15, text: 'Gasoline', question_id: 5)
  AnswerChoice.create!(id: 16, text: 'Diesel', question_id: 5)
  AnswerChoice.create!(id: 17, text: 'Ethanol', question_id: 5)
  AnswerChoice.create!(id: 18, text: 'Hybrid/Combined', question_id: 5)
  AnswerChoice.create!(id: 19, text: 'Electricity', question_id: 5)
  AnswerChoice.create!(id: 20, text: 'Natural Gas', question_id: 5)
  AnswerChoice.create!(id: 21, text: 'Other', question_id: 5)
  AnswerChoice.create!(id: 22, text: 'Not at all', question_id: 6)
  AnswerChoice.create!(id: 23, text: 'Somewhat', question_id: 6)
  AnswerChoice.create!(id: 24, text: 'Highly', question_id: 6)
  AnswerChoice.create!(id: 25, text: 'All the way', question_id: 6)
  AnswerChoice.create!(id: 26, text: 'Not at all', question_id: 7)
  AnswerChoice.create!(id: 27, text: 'Somewhat', question_id: 7)
  AnswerChoice.create!(id: 28, text: 'Highly', question_id: 7)
  AnswerChoice.create!(id: 29, text: 'All the way', question_id: 7)
  AnswerChoice.create!(id: 30, text: 'Not at all', question_id: 8)
  AnswerChoice.create!(id: 31, text: 'Somewhat', question_id: 8)
  AnswerChoice.create!(id: 32, text: 'Highly', question_id: 8)
  AnswerChoice.create!(id: 33, text: 'All the way', question_id: 8)

  Response.create!(id: 1, user_id: 1, answer_choice_id: 1)
  Response.create!(id: 2, user_id: 1, answer_choice_id: 7)
  Response.create!(id: 3, user_id: 1, answer_choice_id: 8)
  Response.create!(id: 4, user_id: 1, answer_choice_id: 11)
  Response.create!(id: 5, user_id: 1, answer_choice_id: 17)
  Response.create!(id: 6, user_id: 1, answer_choice_id: 22)
  Response.create!(id: 7, user_id: 1, answer_choice_id: 26)
  Response.create!(id: 8, user_id: 1, answer_choice_id: 30)
  Response.create!(id: 9, user_id: 2, answer_choice_id: 2)
  Response.create!(id: 10, user_id: 2, answer_choice_id: 7)
  Response.create!(id: 11, user_id: 2, answer_choice_id: 9)
  Response.create!(id: 12, user_id: 2, answer_choice_id: 11)
  Response.create!(id: 13, user_id: 2, answer_choice_id: 20)
  Response.create!(id: 14, user_id: 2, answer_choice_id: 22)
  Response.create!(id: 15, user_id: 2, answer_choice_id: 27)
  Response.create!(id: 16, user_id: 2, answer_choice_id: 32)
  Response.create!(id: 17, user_id: 3, answer_choice_id: 3)
  Response.create!(id: 18, user_id: 3, answer_choice_id: 4)
  Response.create!(id: 19, user_id: 3, answer_choice_id: 8)
  Response.create!(id: 20, user_id: 3, answer_choice_id: 13)
  Response.create!(id: 21, user_id: 3, answer_choice_id: 15)
  Response.create!(id: 22, user_id: 3, answer_choice_id: 25)
  Response.create!(id: 23, user_id: 3, answer_choice_id: 29)
  Response.create!(id: 24, user_id: 3, answer_choice_id: 30)
  Response.create!(id: 25, user_id: 4, answer_choice_id: 2)
  Response.create!(id: 26, user_id: 4, answer_choice_id: 4)
  Response.create!(id: 27, user_id: 4, answer_choice_id: 8)
  Response.create!(id: 28, user_id: 4, answer_choice_id: 13)
  Response.create!(id: 29, user_id: 4, answer_choice_id: 15)
  Response.create!(id: 30, user_id: 4, answer_choice_id: 25)
  Response.create!(id: 31, user_id: 4, answer_choice_id: 26)
  Response.create!(id: 32, user_id: 4, answer_choice_id: 31)
  Response.create!(id: 33, user_id: 5, answer_choice_id: 2)
  Response.create!(id: 34, user_id: 5, answer_choice_id: 6)
  Response.create!(id: 35, user_id: 5, answer_choice_id: 10)
  Response.create!(id: 36, user_id: 5, answer_choice_id: 14)
  Response.create!(id: 37, user_id: 5, answer_choice_id: 17)
  Response.create!(id: 38, user_id: 5, answer_choice_id: 25)
  Response.create!(id: 39, user_id: 5, answer_choice_id: 28)
  Response.create!(id: 40, user_id: 5, answer_choice_id: 30)
  Response.create!(id: 41, user_id: 6, answer_choice_id: 3)
  Response.create!(id: 42, user_id: 6, answer_choice_id: 4)
  Response.create!(id: 43, user_id: 6, answer_choice_id: 8)
  Response.create!(id: 44, user_id: 6, answer_choice_id: 11)
  Response.create!(id: 45, user_id: 6, answer_choice_id: 21)
  Response.create!(id: 46, user_id: 6, answer_choice_id: 24)
  Response.create!(id: 47, user_id: 6, answer_choice_id: 29)
  Response.create!(id: 48, user_id: 6, answer_choice_id: 33)
  Response.create!(id: 49, user_id: 7, answer_choice_id: 3)
  Response.create!(id: 50, user_id: 7, answer_choice_id: 7)
  Response.create!(id: 51, user_id: 7, answer_choice_id: 10)
  Response.create!(id: 52, user_id: 7, answer_choice_id: 11)
  Response.create!(id: 53, user_id: 7, answer_choice_id: 18)
  Response.create!(id: 54, user_id: 7, answer_choice_id: 24)
  Response.create!(id: 55, user_id: 7, answer_choice_id: 28)
  Response.create!(id: 56, user_id: 7, answer_choice_id: 30)
  Response.create!(id: 57, user_id: 8, answer_choice_id: 1)
  Response.create!(id: 58, user_id: 8, answer_choice_id: 6)
  Response.create!(id: 59, user_id: 8, answer_choice_id: 8)
  Response.create!(id: 60, user_id: 8, answer_choice_id: 13)
  Response.create!(id: 61, user_id: 8, answer_choice_id: 21)
  Response.create!(id: 62, user_id: 8, answer_choice_id: 24)
  Response.create!(id: 63, user_id: 8, answer_choice_id: 27)
  Response.create!(id: 64, user_id: 8, answer_choice_id: 33)
  Response.create!(id: 65, user_id: 9, answer_choice_id: 3)
  Response.create!(id: 66, user_id: 9, answer_choice_id: 7)
  Response.create!(id: 67, user_id: 9, answer_choice_id: 9)
  Response.create!(id: 68, user_id: 9, answer_choice_id: 11)
  Response.create!(id: 69, user_id: 9, answer_choice_id: 19)
  Response.create!(id: 70, user_id: 9, answer_choice_id: 25)
  Response.create!(id: 71, user_id: 9, answer_choice_id: 29)
  Response.create!(id: 72, user_id: 9, answer_choice_id: 31)



end

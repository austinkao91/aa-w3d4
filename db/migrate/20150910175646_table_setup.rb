class TableSetup < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.timestamps
    end
    add_index :users, [:user_name], unique: true

    create_table :polls do |t|
      t.string :title
      t.integer :author_id
      t.timestamps
    end
    add_index :polls, [:author_id]
    add_index :polls, [:title], unique: true

    create_table :questions do |t|
      t.string :text
      t.integer :poll_id
      t.timestamps
    end
    add_index :questions, [:poll_id, :text]

    create_table :answer_choices do |t|
      t.integer :question_id
      t.string :text
      t.timestamps
    end
    add_index :answer_choices, [:question_id, :text]

    create_table :responses do |t|
      t.integer :user_id
      t.integer :answer_choice_id
      t.timestamps
    end
    add_index :responses, [:user_id, :answer_choice_id]
  end

end

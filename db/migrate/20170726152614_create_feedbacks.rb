class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.string :firstname
      t.string :lastname
      t.integer :phone
      t.string :email
      t.text :what_you_think

      t.timestamps
    end
  end
end

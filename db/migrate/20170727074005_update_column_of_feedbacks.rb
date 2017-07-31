class UpdateColumnOfFeedbacks < ActiveRecord::Migration[5.0]
  def change
  	change_column :feedbacks, :phone, :string
  end
end

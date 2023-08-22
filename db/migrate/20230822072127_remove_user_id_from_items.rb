class RemoveUserIdFromItems < ActiveRecord::Migration[7.0]
  def change
    remove_reference :items, :user, foreign_key: true
  end
end

class AddTimestampsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_timestamps(:posts, null: true)
  end
end

class AddImageIdToVotes < ActiveRecord::Migration
  def change
    add_reference :votes, :image, index: true, foreign_key: true
  end
end

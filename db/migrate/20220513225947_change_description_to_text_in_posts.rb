class ChangeDescriptionToTextInPosts < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir|
      change_table :posts do |t|
        dir.up { t.change :description, :text }
        dir.down { t.change :description, :string }
      end
    end
  end
end

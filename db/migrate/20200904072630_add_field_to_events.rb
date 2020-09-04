class AddFieldToEvents < ActiveRecord::Migration[6.0]
  def change
    # change_table :events do |t|
    #   t.integer :event_creator_id, null: false, foreign_key: true
    # end     
    # t.references :event_creator
    add_column :events, :event_creator_id, :integer, null: false, foreign_key: true
  end
end

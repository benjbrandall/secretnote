class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes, id: :uuid do |t|
      t.text :body
      t.boolean :is_destroyed

      t.timestamps
    end
  end
end

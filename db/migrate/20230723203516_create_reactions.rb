class CreateReactions < ActiveRecord::Migration[7.0]
  def change
    create_table :reactions do |t|
      t.references :publication, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :kind

      t.timestamps
    end
  end
end

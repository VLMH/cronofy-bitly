class CreateRedirections < ActiveRecord::Migration[6.1]
  def change
    create_table :redirections do |t|
      t.string :url, :null => false
      t.string :slug, :null => false
      t.timestamps

      t.index :slug, unique: true
    end
  end
end

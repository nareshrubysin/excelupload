class CreateDownloadExcels < ActiveRecord::Migration
  def change
    create_table :download_excels do |t|
      t.string :name
      t.string :fristname
      t.string :lastname
      t.integer :age

      t.timestamps null: false
    end
  end
end

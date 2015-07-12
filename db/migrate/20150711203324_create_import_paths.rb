class CreateImportPaths < ActiveRecord::Migration
  def change
    create_table :import_paths do |t|
      t.string :path_name
      t.string :file_count
      t.string :total_size

      t.timestamps null: false
    end
  end
end

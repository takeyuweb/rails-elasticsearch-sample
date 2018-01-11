class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.string :title, null: false, default: ''
      t.string :url, null: false, default: ''
      t.text :abstract, null: false, default: ''

      t.timestamps
    end
  end
end

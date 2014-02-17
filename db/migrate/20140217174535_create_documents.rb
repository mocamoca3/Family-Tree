class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.string :body
      t.string :text
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end

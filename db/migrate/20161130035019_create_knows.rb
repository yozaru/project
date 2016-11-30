class CreateKnows < ActiveRecord::Migration[5.0]
  def change
    create_table :knows do |t|
      t.string :title
      t.string :company
      t.text :body

      t.timestamps
    end
  end
end

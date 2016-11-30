class AddImageToKnow < ActiveRecord::Migration[5.0]
  def change
    add_column :knows, :image, :string
  end
end

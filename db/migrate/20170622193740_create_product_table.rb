class CreateProductTable < ActiveRecord::Migration[5.1]
  def change
    create_table :product do |t|
            t.string :name
            t.string :price
            t.string :catergory
        end
  end
end

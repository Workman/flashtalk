class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :title
      t.string :body
      t.int :wait
      t.int :order

      t.timestamps
    end
  end
end

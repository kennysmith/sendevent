class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.string :price
      t.string :posts_month

      t.timestamps
    end
  end
end

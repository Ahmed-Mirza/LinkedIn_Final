class CreateReturns < ActiveRecord::Migration
  def change
    create_table :returns do |t|
      t.text :content

      t.timestamps
    end
  end
end

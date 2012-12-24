class CreateGreets < ActiveRecord::Migration
  def change
    create_table :greets do |t|

      t.timestamps
    end
  end
end

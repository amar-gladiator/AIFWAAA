class CreateGmcs < ActiveRecord::Migration
  def change
    create_table :gmcs do |t|

      t.timestamps null: false
    end
  end
end

class CreateBizTypes < ActiveRecord::Migration
  def change
    create_table :biz_types do |t|
      t.string :name

      t.timestamps
    end
    add_index :biz_types, :name, unique: true
  end
end

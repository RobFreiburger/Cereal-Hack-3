class CreateBizFeats < ActiveRecord::Migration
  def change
    create_table :biz_feats do |t|
      t.string :name

      t.timestamps
    end
    add_index :biz_feats, :name, unique: true

    create_table :todo_lists_biz_types, id: false do |t|
    	t.belongs_to :todo_list
    	t.belongs_to :biz_type
    end

    create_table :todo_lists_biz_feats, id: false do |t|
    	t.belongs_to :todo_list
    	t.belongs_to :biz_feat
    end
  end
end

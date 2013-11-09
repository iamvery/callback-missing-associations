class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.belongs_to :tag
    end
  end
end

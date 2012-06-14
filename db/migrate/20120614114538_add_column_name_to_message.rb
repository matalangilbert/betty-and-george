class AddColumnNameToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :content, :string
  end
end

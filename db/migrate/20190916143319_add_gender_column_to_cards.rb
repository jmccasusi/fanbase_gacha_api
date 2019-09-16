class AddGenderColumnToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :gender, :string, default: 'N/A'
  end
end

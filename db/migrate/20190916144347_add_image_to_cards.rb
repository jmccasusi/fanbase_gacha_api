class AddImageToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :img_url, :string, default: 'http://noodleblvd.com/wp-content/uploads/2016/10/No-Image-Available.jpg'
  end
end

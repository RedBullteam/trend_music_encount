class RemoveVideoUrlFromGoods < ActiveRecord::Migration[5.2]
  def change
    remove_column :goods, :video_url, :text
  end
end

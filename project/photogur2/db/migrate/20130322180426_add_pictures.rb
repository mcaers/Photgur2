class AddPictures < ActiveRecord::Migration
  def up
  	create_table :pictures do |t|
  		t.string :artist
  		t.string :title
  		t.string :url
  	end
  end

  def down
  	drop_table :pictures
  end
end

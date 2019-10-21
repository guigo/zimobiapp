class AddAttachmentImageToImmobiles < ActiveRecord::Migration[5.2]
  def self.up
    change_table :immobiles do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :immobiles, :image
  end
end

class AddAttachmentLogoToBusinesses < ActiveRecord::Migration
  def self.up
    change_table :businesses do |t|
      t.has_attached_file :logo
    end
  end

  def self.down
    drop_attached_file :businesses, :logo
  end
end

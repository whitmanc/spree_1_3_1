# This migration comes from spree_mail_chimp (originally 20101102200125)
class AddSubscriberColumnToUsers < ActiveRecord::Migration
  def self.up
    add_column :spree_users, :is_mail_list_subscriber, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :spree_users, :is_mail_list_subscriber
  end
end

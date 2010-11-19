class AddPhoneNumberField < ActiveRecord::Migration
  def self.up
    add_column :inquiries, :phone_number_alt, :string
  end

  def self.down
    remove_column :inquiries, :phone_number
  end
end

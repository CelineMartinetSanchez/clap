class AddProviderUidTokenImageCityGenderToUser < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :token, :string
    add_column :users, :image, :string
    add_column :users, :city, :string
    add_column :users, :gender, :string
  end
end

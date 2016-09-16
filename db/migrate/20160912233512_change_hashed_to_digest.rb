class ChangeHashedToDigest < ActiveRecord::Migration
  def change
    rename_column :artists, :hashed_password, :password_digest
  end
end

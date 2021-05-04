class DropOauthTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :oauth_access_tokens
    drop_table :oauth_applications
  end
end
